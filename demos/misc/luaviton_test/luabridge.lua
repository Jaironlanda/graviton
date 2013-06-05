print("Beginning Test...")

print ("----- testing A -----")
A.testStatic()
print(A.testStaticProp)

a_obj = A("HELL'o C")
a_obj:testVirtual()

name = a_obj:getName()
print(name)

print(a_obj.testProp)
a_obj:testPropSet(23)
print(a_obj:testPropGet())

print ("----- testing B -----")
B.testStatic()
b_obj = B("I'm B!")
b_obj:testVirtual()
b_obj:testPropSet(24)
print(b_obj:testPropGet())

print ("----- testing funcs -----")
print( testRetStdString() )
testParamStdStringRef("Back to C")

testData(a_obj)
print(a_obj.testProp)

print ("----- testing TCP client -----")
cli = gvn.core.TCP_Client("127.0.0.1", 7357)
cli:connect()

test = cli:recvString()
cli:sendString(test)
print(test)
