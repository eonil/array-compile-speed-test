rm -f a.swift a
rm -f b.swift b
rm -f c.swift c

swift gen.swift

time swiftc a.swift
./a 

time swiftc b.swift
./b

time swiftc c.swift
./c
