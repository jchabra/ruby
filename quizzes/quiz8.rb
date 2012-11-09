#Instructions: classes A --> B --> C
# m1, m2 modules included in B
# m3 module is included in C

# A
# |
# v 

# B <--- m1, m2 modules
# |
# v 

# C <--- m3 module
# |
# v 

#inhertiance 

module M1
end

module M2
end

module M3
end


class A
end

class B < A
	include M1
	include M2
end

class C < C
	include M3
end