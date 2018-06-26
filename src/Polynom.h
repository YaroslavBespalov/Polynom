#include <iostream>
#include <deque>
#include <iterator>

template<typename T>
class Polynom
{
private:
    
    std::deque<T> coefficients;
    
    void update()
    {
        if (coefficients.empty()) {
            coefficients.push_back(static_cast<T>(0));
        }
        while (coefficients.size() > 1 && this->coefficients.back() == 0) {
            this->coefficients.pop_back();
        }
    }
    
    Polynom div(const Polynom& divisor, bool Parametr) const
    {
        Polynom<T> dividend(*this), result;
        while (divisor <= dividend) {
            Polynom mult_pol;
            mult_pol[dividend.degree() - divisor.degree()]
            = dividend.coefficients.back() / divisor.coefficients.back();
            
            dividend -= divisor * mult_pol;
            if (!Parametr)
                result += mult_pol;
        }
        if (Parametr)
            return dividend;
        else
            return result;
    }
    
    
public:
    Polynom(const std::deque<T> &coeffs) : coefficients(coeffs)
    {
        update();
    }
    
    Polynom(const Polynom& pol) {
        coefficients.resize(pol.coefficients.size(),0);
        coefficients = pol.coefficients;
    }
    
    Polynom(Polynom&& pol) :  coefficients(std::move(pol.coefficients)) {
        update();
    }
    
    
    explicit Polynom() {
        coefficients.push_back(static_cast<T>(0));
    }
    
    explicit Polynom(T coeff)
    {
        coefficients.push_back(coeff);
        update();
    }
    
    
    bool operator==(const Polynom& pol) const
    {
        if (pol.degree() == this->degree()) {
            for (int i = 0; i <= pol.degree(); ++i) {
                if (pol.coefficients[i] != this->coefficients[i])
                    return false;
            }
        } else {
            return false;
        }
        
        return true;
    }
    
    bool operator!=(const Polynom& pol) const
    {
        return !(*this == pol);
    }
    
    
    const Polynom& operator+=(const Polynom& pol)
    {
        for (int i = 0; i <= pol.degree(); ++i) {
            (*this)[i] += pol[i];
        }
        
        update();
        return *this;
    }
    
    Polynom operator+(const Polynom& pol) const
    {
        Polynom secondPolynom(*this);
        return secondPolynom += pol;
    }
    
    const Polynom& operator*=(T multiplier_factor)
    {
        for (int i = 0; i <= this->degree(); ++i) {
            (*this)[i] *= multiplier_factor;
        }
        
        return *this;
    }
    
    Polynom operator*(T multiplier_factor) const
    {
        Polynom secondPolynom(*this);
        return  secondPolynom *= multiplier_factor;
    }
    
    const Polynom& operator-=(const Polynom& pol)
    {
        for (int i = 0; i <= pol.degree(); ++i) {
            (*this)[i] -= pol[i];
        }
        
        update();
        return *this;
    }
    
    Polynom& operator=(const Polynom& pol)
    {
        coefficients.resize(pol.coefficients.size(),0);
        coefficients = pol.coefficients;
        return (*this);
    }
    
    Polynom& operator=(const Polynom&& pol)
    {
        coefficients = std::move(pol.coefficients);
        return (*this);
    }
    
    Polynom operator-(const Polynom& pol) const
    {
        Polynom secondPolynom(*this);
        return secondPolynom -= pol;
    }
    
    Polynom operator*(const Polynom& pol) const
    {
        Polynom<T> secondPolynom;
        for (int i = 0; i <= this->degree(); ++i) {
            for (int j = 0; j <= pol.degree(); ++j) {
                secondPolynom[i + j] += (*this)[i] * pol[j];
            }
        }
        return secondPolynom;
    }
    
    const Polynom& operator*=(const Polynom& pol)
    {
        *this = *this * pol;
        return *this;
    }
    
    
    int degree()
    {
        for (int i = coefficients.size()-1; i >= 0 ; --i) {
            if (coefficients[i] != 0) {
                return i;
            }
        }
        return 0;
    }
    
    int degree() const
    {
        for (int i = coefficients.size()-1; i >= 0 ; --i) {
            if (coefficients[i] != 0) {
                return i;
            }
        }
        return 0;
    }
    
    int size() const {
        return coefficients.size();
    }
    
    T& operator[](int i)
    {
        if (i >= coefficients.size())
            coefficients.resize(i + 1, 0);
        return coefficients[i];
    }
    
    T operator[](int i) const
    {
        if (i >= coefficients.size())
            return 0;
        return coefficients[i];
    }
    
    
    const T operator()(T coordinate)
    {
        T result = 0;
        T value = 1;
        
        for (int i = 0; i <= this->degree(); ++i) {
            result += value * (*this)[i];
            value *= coordinate;
        }
        
        return result;
    }
    
    
    friend std::ostream& operator<<(std::ostream& stream, const Polynom &pol)
    {
        bool first = true;
        for (int i = 0; i < pol.size(); ++i) {
            if (first) {
                if (pol[i] != 0) {
                    if (i == 0) {
                        stream << pol[i] << " ";
                    } else {
                        stream << pol[i] << "*x^" << i << " ";
                    }
                    first = false;
                }
            } else {
                if (pol[i] != 0) {
                    if (pol[i] > 0) {
                        stream << "+ " << pol[i];
                    } else {
                        stream << "- " << -pol[i];
                    }
                    stream << "*x^" << i << " ";
                }
            }
        }
        return stream;
    }
    
    
    typename std::deque<T>::iterator begin()
    {
        return coefficients.begin();
    }
    
    typename std::deque<T>::iterator end()
    {
        return coefficients.end();
    }
    
    typename std::deque<T>::const_iterator begin() const
    {
        return coefficients.begin();
    }
    
    typename std::deque<T>::const_iterator end() const
    {
        return coefficients.end();
    }
    
    typename std::deque<T>::const_iterator cbegin() const
    {
        return coefficients.cbegin();
    }
    
    typename std::deque<T>::const_iterator cend() const
    {
        return coefficients.cend();
    }
    
    Polynom operator/(const Polynom& pol) const
    {
        return div(pol, false);
    }
    
    Polynom operator%(const Polynom& pol) const
    {
        return div(pol, true);
    }
    
    bool operator<(const Polynom& pol) const
    {
        if (this->degree() == pol.degree()) {
            for (int i = this->degree(); i >= 0; --i) {
                if ((*this)[i] < pol[i])
                    return true;
            }
        }
        
        return (this->degree() < pol.degree());
    }
    
    bool operator<=(const Polynom& pol) const
    {
        return (*this == pol) || (*this < pol);
    }
};

template<typename T>
Polynom<T> operator, (Polynom<T> &a, Polynom<T> &b)
{
    if (a.degree() == -1)
        return b;
    return (b % a, a);
}

