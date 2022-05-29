def foo (x):
    return x**7-28*x**6+322*x**5-1960*x**4-6769*x**3-13132*x**2+13068*x

a = -1
b = 1

for i in range (0, 10**100, 1):
    mid = (b+a)/2
    if (foo(a) * foo(mid) < 0):
        b = mid
    else:
        a = mid

print("mid=", mid, " f(mid)=", foo(mid), sep="")

