#include "gtest/gtest.h"
#include <sstream>
#include "Polynom.h"
#include "vector"


TEST(Polynom, Test_Degree_function)
{
    Polynom<int> a;
    a[1] = 1;
    a[3] = 3;
    a[5] = 5;
    EXPECT_EQ(5, a.degree());
}

TEST(Polynom, passing_by_reference)
{
    Polynom<int> a;
    const Polynom<int>& b = a;
    a[5] = 42.0;
    ASSERT_EQ(42, b[5]);
}

TEST(Polynom, initialization)
{
    Polynom<double> a(3);
    a[5] = 42.0;
    ASSERT_EQ(42.0, a[5]);
}

TEST(Polynom, Iterator)
{
    Polynom<int> a;
    a[0] = 3;
    a[1] = 5;
    a[2] = 4;
    const Polynom<int> b = a;
    std::vector<int> expect {3, 5, 4};
    std::vector<int> result(0);
    for (auto it = b.begin(); it != b.end(); ++it)
        result.push_back(*it);
    ASSERT_EQ(expect, result);
}


TEST(Polynom, value_passing_reference)
{
     Polynom<int> a;
     a[0] = 0;
     a[1] = 1;
     a[2] = 2;
     a[3] = 3;
     int& x = a[3];
     x = 0;
    std::string str1 = "1*x^1 + 2*x^2 ";
    std::ostringstream stream;
    stream << a;
    ASSERT_EQ(str1, stream.str());
}

TEST(Polynom, value_in_point)
{
    Polynom<double> a;
    a[2] = 5;
    ASSERT_EQ(20.0, a(2));
}

TEST(Polynom, comparing)
{
    Polynom<double> a;
    a[2] = 5;
    a[3] = 10;
    Polynom<double> b;
    b[2] = 6;
    b[3] = 10;
    Polynom<double> c;
    c[2] = 5;
    c[3] = 10;
    ASSERT_EQ(1, a==c);
    ASSERT_EQ(0, b==a);
    ASSERT_EQ(1, b!=a);
    ASSERT_EQ(1, b!=c);
}

TEST(Polynom, arithmetic)
{
    Polynom<double> a;
    Polynom<double> b;
    a[2] = 5;
    b[3] = 4;
    b[2]=2;
    Polynom<double> e;
    e[2] = 7;
    e[3] = 4;
    Polynom<double> d;
    d[2] = 3;
    d[3] = -4;
    std::string str1 = "10*x^4 + 20*x^5 ";
    Polynom<double> f;
    f = a * b;
    std::ostringstream stream;
    stream << f;
    ASSERT_EQ(e, a+b);
    ASSERT_EQ(d, a-b);
    ASSERT_EQ(str1, stream.str());
}


TEST(Polynom, stream_passing)
{
    Polynom<double> b;
    b[3] = 4;
    b[2]=2;
    std::string str1 = "2*x^2 + 4*x^3 ";
    std::ostringstream stream;
    stream << b;
    ASSERT_EQ(str1, stream.str());
}

TEST(Polynom, incomplete_quotient_and_remainder_of_the_division)
{
    Polynom<double> a;
    Polynom<double> b;
    a[2] = 5;
    b[2] = 5;
    Polynom<double> c;
    c = a/b;
    std::ostringstream stream1;
    stream1 << c;
    std::string str1 = "1 ";
    Polynom<double> e;
    Polynom<double> f;
    e[2] = 3;
    f[2] = 5;
    Polynom<double> g;
    g = e%f;
    std::ostringstream stream2;
    stream2 << g;
    std::string str2 = "3*x^2 ";
    ASSERT_EQ(str1, stream1.str());
    ASSERT_EQ(str2, stream2.str());
}


TEST(Polynom, greatest_common_divisor)
{
    Polynom<double> a;
    Polynom<double> b;
    a[2] = 5;
    b[3] = 4;
    b[2] = 2;
    Polynom<double> c;
    c = (a,b);
    std::ostringstream stream;
    stream << c;
    std::string str1 = "5*x^2 ";
    ASSERT_EQ(str1, stream.str());
}

TEST(Polynom, assignment_operator)
{
    Polynom<int> a;
    Polynom<int> b;
    b[0] = 0;
    b[1] = 1;
    b[2] = 2;
    b[3] = 4;
    a = b;
    ASSERT_EQ(a, b);
}

TEST(Polynom, assignment_constructor)
{
    Polynom<int> b;
    b[0] = 0;
    b[1] = 1;
    b[2] = 2;
    b[3] = 4;
    Polynom<int> a(b);
    ASSERT_EQ(a, b);
}

TEST(Polynom, move_polynom)
{
    Polynom<int> a;
    a[0] = 0;
    a[1] = 1;
    a[2] = 2;
    a[3] = 3;
    int& x = a[3];
    x = 0;
    Polynom<int> b;
    b[0] = 0;
    b[1] = 1;
    b[2] = 2;
    b[3] = 4;
    a = std::move(b);
    std::ostringstream stream;
    stream << a;
    std::string str1 = "1*x^1 + 2*x^2 + 4*x^3 ";
    ASSERT_EQ(str1, stream.str());
}
