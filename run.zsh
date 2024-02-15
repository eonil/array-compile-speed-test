rm -f a.swift a
rm -f b.swift b

swift gen.swift

time swiftc a.swift
./a 

time swiftc b.swift
./b
