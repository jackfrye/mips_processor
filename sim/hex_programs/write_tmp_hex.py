from intelhex import IntelHex

# Create an IntelHex object
ih = IntelHex()

# Add data to the object
ih[0] = 0x12
ih[1] = 0x34
ih[2] = 0x56

# Write the hex file
ih.write_hex_file("tmp.hex")
