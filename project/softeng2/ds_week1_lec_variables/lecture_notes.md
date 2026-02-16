---
marp: true
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.svg')
---

# Info

- Home page
- Contact via Teams
- Set chennel notifications on

---

# The meaning of bytes
Lecture one

---

# Excel example

- Excel tries to hide it by rounding

---

# Python example

``` python
a = 0.1
b = 0.2
c = 0.3

print(a+b==c) #wtf


print(f"a={a:.20f}")
print(f"b={b:.20f}")
```

---

# Exapmles of abstraction layers 

- Excel does the math
- Car accelerator and brake
- For an aircraft it doesn't work
- Gravitational force acts between bodies of mass
- Time is monotonic 

---

# Time is not monotonic 

- Never assume seconds are continuous!
- DST and NTC sync are trivial 

---

# Leap seconds

- Applications usually don’t see “23:59:60”
- **Historically**: a leap second is added about one every ~1.5–2 years on average
- **Reality**: completely irregular — sometimes yearly, sometimes gaps of many years
- **Recently**: none since 2016, and none expected very soon
- Google popularized leap smearing: Instead of adding 1 second suddenly, the clock is slowed slightly over hours

---

# Memory doesn't store numbers

---

![bg contain](charactermap.jpg)

---

# The word integer comes from Latin

It’s built from

- in = “not”  
- tangere = “to touch”

Literally: “not touched” → “unbroken / whole” It entered English in the 1500s as a whole number (positive, negative, or zero), i.e. not a fraction — something “undivided”.

---

### Decimal fractions in binary

$$
0.1_{10} = 0.00011001100110011\ldots_2
$$

Repetition indicated:
$$
0.1_{10} = 0.0001\overline{1001}_2
$$

---

# IEEE 754 type floats

https://edgar-seemann.de/converters/ieee754.html

---

# Fractions in Python

---

# Python int
