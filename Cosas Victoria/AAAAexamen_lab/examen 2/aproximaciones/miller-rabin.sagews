︠7a040fd5-1d03-4771-8b09-3d3d62331e6f︠
def miller_rabin0(n):
    n2 = n-1
    s = 0
    while n2%2 == 0:
        n2 = n2//2
        s += 1
        #print s
    return s,(n-1)//(2^s)
︡3856904e-811c-4388-9afa-d28b94656cc4︡︡
︠2492e154-241b-410e-8649-ad54a4c4c1d1︠
miller_rabin0(25)
︡da692d6b-078a-4bf6-b008-b4fdd45384c5︡{"stdout": "(3, 3)"}︡
︠7f7cc5ec-0fe4-4052-8086-36e62d79ee0f︠
def miller_rabin1(n,t):
    L = []
    while len(L) <= t:
        a = randint(2,n-1)
        if gcd(a,n) == 1:
            L.append(a)
        else:
            return False
    return L
︡1a200ed4-8a8d-438d-b1ff-c0a444083036︡︡
︠35c96ea9-83f5-4e3f-b901-c64a354786e6︠
def miller_rabin2a(n,a,d):
    if power_mod(a,d,n) == 1:
        return True
    else: 
        return False ###########a puede ser un testigo, debe devolver False tambien miller_rabin2b
︡7ec6cc42-1b71-4ebe-afb3-83d7fccbdf9c︡︡
︠6fb8bf66-7b39-4189-870d-8c5fe1b1a024︠
def miller_rabin2b(n,a,s,d):
    L = [1 for r in srange(s) if (power_mod(a,(2^r)*d,n)+1)%n == 0]
    if len(L) > 0:
        return True 
    else: 
        return False ############# a puede ser un testigo, debe devolver False tambien miller_rabin2a
︡50f50bcb-9bf7-45a4-abfd-428492e25603︡︡
︠eb84dd4c-a19d-49b3-8d3f-56661fbf0eb7︠
def miller_rabin(n,t):
    s,d = miller_rabin0(n)
    L = miller_rabin1(n,t)
    if L == False:
        return False
    else:
        for a in L:
            if not miller_rabin2a(n,a,d) and not miller_rabin2b(n,a,s,d):
                return False    ##El entero n es compuesto con seguridad y a es un testigo
        return True             ### El entero n es "casi primo"
︡dace06d9-a285-4e73-a879-e8a8a08717d5︡︡
︠992b39ac-874a-4e04-8f67-1e1501f81037︠
miller_rabin(nth_prime(178)*nth_prime(246),15)
︡745aeb7b-32b4-4586-92c6-5ed5bfb4b1a6︡{"stdout": "False"}︡
︠e6f534b0-316f-49e0-9fb3-0fe2a808fef5︠
miller_rabin(nth_prime(1456888),20)
︡3b6b1144-f916-488f-89df-882fd1f51c60︡{"stdout": "True"}︡
︠2fc287d8-9098-472c-92de-0565a4edcf26i︠
%html
<h3>Teorema 1</h3>

︡30ff7fd9-4464-4ba3-b1ce-167d2831d48b︡{"html": "<h3>Teorema 1</h3>"}︡
︠d4962652-1ea7-4eb7-a8a2-d35433793990︠
def teorema1(p,a):
    s,d = miller_rabin0(p)
    if power_mod(a,d,p) == 1:
        print "Se cumple la primera condicion."
    else:
        for r in srange(s):
            if (power_mod(a,(2^r)*d,p)+1)%p == 0:
                print "Se cumple la segunda condicion."
                break
︡0ece58e8-027c-4804-9783-1576e11c9a37︡︡
︠6c413a45-b1cd-416e-9bc4-c207d85945ef︠
teorema1(nth_prime(1456),5249)
︡8327026d-e520-4288-b9d2-b504dbdb5c19︡{"stdout": "Se cumple la segunda condicion."}︡
︠de175cbb-c47b-4bd2-af8d-51ea250bf3e0︠
for p in prime_range(1000,2000):
    a = randint(1,p-1)
    print p,a
    if gcd(a,p) == 1:
        teorema1(p,a)
        print "======================================================================="
︡6a531f18-93a0-44a5-88f4-d66dd943c63e︡{"stdout": "WARNING: Output truncated!"}︡{"html": "<a target='_new' href='/home/admin/66/cells/20/full_output.txt' class='file_link'>full_output.txt</a>"}︡{"stdout": "1009 620\nSe cumple la segunda condicion.\n=======================================================================\n1013 708\nSe cumple la primera condicion.\n=======================================================================\n1019 853\nSe cumple la segunda condicion.\n=======================================================================\n1021 705\nSe cumple la segunda condicion.\n=======================================================================\n1031 901\nSe cumple la segunda condicion.\n=======================================================================\n1033 915\nSe cumple la segunda condicion.\n=======================================================================\n1039 737\nSe cumple la segunda condicion.\n=======================================================================\n1049 784\nSe cumple la segunda condicion.\n=======================================================================\n1051 312\nSe cumple la segunda condicion.\n=======================================================================\n1061 786\nSe cumple la primera condicion.\n=======================================================================\n1063 123\nSe cumple la primera condicion.\n=======================================================================\n1069 28\nSe cumple la segunda condicion.\n=======================================================================\n1087 98\nSe cumple la primera condicion.\n=======================================================================\n1091 743\nSe cumple la primera condicion.\n=======================================================================\n1093 233\nSe cumple la primera condicion.\n=======================================================================\n1097 41\nSe cumple la segunda condicion.\n=======================================================================\n1103 1054\nSe cumple la segunda condicion.\n=======================================================================\n1109 277\nSe cumple la primera condicion.\n=======================================================================\n1117 1041\nSe cumple la segunda condicion.\n=======================================================================\n1123 907\nSe cumple la segunda condicion.\n\n...\n\n1861 1791\nSe cumple la primera condicion.\n=======================================================================\n1867 880\nSe cumple la segunda condicion.\n=======================================================================\n1871 1807\nSe cumple la segunda condicion.\n=======================================================================\n1873 1687\nSe cumple la segunda condicion.\n=======================================================================\n1877 1519\nSe cumple la segunda condicion.\n=======================================================================\n1879 1755\nSe cumple la primera condicion.\n=======================================================================\n1889 479\nSe cumple la segunda condicion.\n=======================================================================\n1901 1479\nSe cumple la primera condicion.\n=======================================================================\n1907 240\nSe cumple la segunda condicion.\n=======================================================================\n1913 711\nSe cumple la segunda condicion.\n=======================================================================\n1931 871\nSe cumple la primera condicion.\n=======================================================================\n1933 826\nSe cumple la segunda condicion.\n=======================================================================\n1949 965\nSe cumple la segunda condicion.\n=======================================================================\n1951 755\nSe cumple la segunda condicion.\n=======================================================================\n1973 1089\nSe cumple la segunda condicion.\n=======================================================================\n1979 167\nSe cumple la primera condicion.\n=======================================================================\n1987 43\nSe cumple la segunda condicion.\n=======================================================================\n1993 1523\nSe cumple la segunda condicion.\n=======================================================================\n1997 1663\nSe cumple la segunda condicion.\n=======================================================================\n1999 389\nSe cumple la primera condicion.\n======================================================================="}︡
︠1fde832d-9f7a-4953-aefb-d83d37baf4fbi︠
%html
<h3>Teorema 2</h3>

︡05a6cb39-19f1-449b-947e-2f567270a56f︡{"html": "<h3>Teorema 2</h3>"}︡
︠a274d6db-8485-4706-81a9-3e3c9c65b03f︠
def teorema2(n):
    testigos = 0
    s,d = miller_rabin0(n)
    #print s,d
    for a in srange(2,n):
        if gcd(a,n) == 1:
            if ((not miller_rabin2a(n,a,d)) and (not miller_rabin2b(n,a,s,d))):
                testigos += 1
        else:
            testigos += 1
    if  testigos < n-((n-1)/4).ceil():
        return testigos,n-((n-1)/4).ceil()
︡d958b66b-848a-4250-a5a7-9c427db088c2︡︡
︠2bae9c6d-7557-4be5-a002-fe7b0b2ec365︠
teorema2(10005)
︡32c572a7-91f4-472a-9075-a1679ec14049︡︡
︠709a7116-4bc2-4fb6-96d5-da2251131dad︠
for int in srange(10000,10100):
    if ((not is_prime(int)) and (int%2 == 1)):
        print "=",
        teorema2(int)
︡3ecbc792-45e9-4f46-86e2-096f98d07c89︡{"stdout": "= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ="}︡
︠4f71d6c3-3da5-4359-874c-e235865fa054i︠
%html
<h3>Comprobamos</h3>

︡6aed0ae3-eb1e-424f-8ce0-effd45e249d7︡{"html": "<h3>Comprobamos</h3>"}︡
︠d2b25daf-912e-4e3d-847d-312fa567362a︠
all([not miller_rabin(p*nth_prime(1150),10) for p in prime_range(100000,110000)])
︡c1cfa671-ef95-42a2-af8c-bc83f05e51bc︡{"stdout": "True"}︡
︠506f2653-8172-4356-95df-2ddab5d5082b︠
all([miller_rabin(p,10) for p in prime_range(100000,110000)])
︡dfa06627-7e7d-421e-a1cd-ab30bb64b218︡{"stdout": "True"}︡
︠93a509a3-5ab1-4fbc-935a-cbc3d8ed43d4i︠
%html
<h3>B&uacute;squeda de un entero que pase Miller-Rabin, con probabilidad te&oacute;rica menor que $1\%$ de aceptar un no primo como primo, pero sea compuesto:</h3>

︡f6e0e3cf-2298-4111-8312-ee24f447c08f︡{"html": "<h3>B&uacute;squeda de un entero que pase Miller-Rabin, con probabilidad te&oacute;rica menor que $1\\%$ de aceptar un no primo como primo, pero sea compuesto:</h3>"}︡
︠b4296371-2b44-4bfe-8ede-a4d7beb04838︠
(log(0.01)/log(0.25)).n()
︡cf33c8f3-2d8e-4c73-b400-5495658738c9︡{"stdout": "3.32192809488736"}︡
︠da53adb0-c55e-49a4-8c51-69eef6b85012︠
[n for n in srange(2^100,2^100+1000) if is_prime(n) != miller_rabin(n,4)]
︡c005d5d2-75c3-49e6-8f9b-7034446b05da︡{"stdout": "[]"}︡
︠cfb943cc-2217-4aab-9f80-3fa3f0bf4f29︠
[n for n in srange(2^100,2^100+10000) if is_prime(n) != miller_rabin(n,4)]
︡564e3294-790b-426a-a4e1-cc95c60810c3︡{"stdout": "[]"}︡
︠7ff44533-40d2-47ad-86f0-a74dc39d0eef︠
[n for n in srange(2^400,2^400+100000) if is_prime(n) != miller_rabin(n,4)]
︡0a61e9b0-40de-4679-96aa-cec82551c47c︡{"stdout": "[]"}︡
︠59e5c191-4fe5-4829-9fb3-71202c14943f︠
[n for n in srange(10,10^7) if ((not is_prime(n)) and (miller_rabin(n,4) == True))]
︡04a83c56-283d-406f-9628-9db38680ce1a︡{"stdout": "[]"}︡
︠108efce3-fe32-47e1-b736-92b5cc9e616ai︠
%html
<h3>Miller-Rabin determinista suponiendo cierta la Hip&oacute;tesis de Riemann generalizada:</h3>

<p>Si se admite la Hip&oacute;tesis de Riemann generalizada&nbsp; (no se ha demostrado la Hip&oacute;tesis de Riemann y mucho menos la generalizada) se puede demostrar que necesariamente hay un testigo menor que $log(log(n))$. El m&eacute;todo es ahora totalmente determinista, es decir, ya no demuestra que un n&uacute;mero es primo con probabilidad mayor que, por ejemplo,&nbsp; $0.999$ sino que decide, si la Hip&oacute;tesis es correcta,&nbsp; si es primo o no con certeza.</p>
<p>Mientras no se demuestre la&nbsp; Hip&oacute;tesis de Riemann generalizada, podemos decir que el hecho de que Miller-Rabin determinista no d&eacute; resultados falsos soporta el convencimiento de que la Hip&oacute;tesis es correcta.</p>

︡eeec3d4f-af4e-490a-8990-7583d1979036︡{"html": "<h3>Miller-Rabin determinista suponiendo cierta la Hip&oacute;tesis de Riemann generalizada:</h3>\n\n<p>Si se admite la Hip&oacute;tesis de Riemann generalizada&nbsp; (no se ha demostrado la Hip&oacute;tesis de Riemann y mucho menos la generalizada) se puede demostrar que necesariamente hay un testigo menor que $log(log(n))$. El m&eacute;todo es ahora totalmente determinista, es decir, ya no demuestra que un n&uacute;mero es primo con probabilidad mayor que, por ejemplo,&nbsp; $0.999$ sino que decide, si la Hip&oacute;tesis es correcta,&nbsp; si es primo o no con certeza.</p>\n<p>Mientras no se demuestre la&nbsp; Hip&oacute;tesis de Riemann generalizada, podemos decir que el hecho de que Miller-Rabin determinista no d&eacute; resultados falsos soporta el convencimiento de que la Hip&oacute;tesis es correcta.</p>"}︡
︠5e773f33-4bcb-4b6b-9054-42f66391bb3b︠
def miller_rabin_det(n):
    s,d = miller_rabin0(n)
    B = log(log(n)).n().ceil()
    for a in srange(2,B):
        if not miller_rabin2a(n,a,d) and not miller_rabin2b(n,a,s,d):
                return False    ##El entero n es compuesto con seguridad y a es un testigo
    return True
︡1db65e19-7df8-4ef7-8731-20ed2aea967c︡︡
︠7d6bb34f-9663-48ac-8e0e-fb33b530079e︠
all([miller_rabin_det(p) for p in prime_range(100000,110000)])
︡9c3d043f-50ef-404e-89f0-97f95baa97ed︡{"stdout": "True"}︡
︠7548c378-1537-4af6-a5b1-663c916b1500︠
all([not miller_rabin_det(p*q) for p in prime_range(100000,110000) for q in prime_range(100000,101000)])
︡3aeabe9d-0615-4057-8445-c4ebc03c146d︡{"stdout": "True"}︡
︠06be5306-c51a-40b2-b4cd-2b7d7357605d︠
0.25^4
︡acd665c5-8e23-4afa-aa50-590eb3315162︡{"stdout": "0.00390625000000000"}︡
︠af9eba73-78bb-44d4-ac0a-0a8ad153a59f︠
len((2^400).digits(10))
︡474886a7-f329-4086-b30c-347b6e91eb84︡{"stdout": "121"}︡
︠8c635e90-c9ce-41a1-8f6e-503ec70b54ad︠
[k for k in srange(1000) if is_prime(2^701+k)]
︡2927cf2c-43e0-4fa8-808d-f898caa9f3e4︡{"stdout": "[321, 627, 701]"}︡
︠5053b210-4078-44ad-9add-233a48224b05︠
[k for k in srange(10000) if is_prime(2^901+k)]
︡95e9ca57-90e0-4e38-9e3b-0dc5ef7825ed︡{"stdout": "[1149, 1655, 1877, 2439, 2811, 2885, 4971, 5657, 7799, 9207, 9351, 9615]"}︡
︠a68290ad-6fb4-490e-81da-b6faaf2a672a︠
N = (2^701+627)*(2^901+9207)
︡fc2832c4-002e-4c90-b8dd-1112069db425︡︡
︠e950808a-9697-4f62-9ace-0ed4e1cbe319︠
log(N,base=10).n()
︡dd4ee62f-9598-47f2-b5ff-511c6637ef4c︡{"stdout": "482.250053053698"}︡
︠7f7e27b6-8074-4bb6-822e-8677f694a26d︠
log(N,base=2).n()
︡db55e98a-6f94-48d3-a235-9b90351d5238︡{"stdout": "1602.00000000000"}︡
︠eb31248c-b7ca-408b-9fa0-8313f35220d5︠
factor(N)
︡6bb8ab80-48b8-4b24-86a3-a0f1aef76bd0︡{"stdout": "^C"}︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_33.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"ZmFjdG9yKE4p\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpAFe6MA/___code___.py\", line 2, in <module>\n    exec compile(u'factor(N)' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/usr/lib/sagemath/local/lib/python2.7/site-packages/sage/rings/arith.py\", line 2468, in factor\n    int_ = int_, verbose=verbose)\n  File \"integer.pyx\", line 3482, in sage.rings.integer.Integer.factor (sage/rings/integer.c:21745)\n  File \"factorint.pyx\", line 258, in sage.rings.factorint.factor_using_pari (sage/rings/factorint.c:6832)\n  File \"factorint.pyx\", line 299, in sage.rings.factorint.factor_using_pari (sage/rings/factorint.c:6388)\n  File \"gen.pyx\", line 8696, in sage.libs.pari.gen.gen.factor (sage/libs/pari/gen.c:44628)\n  File \"c_lib.pyx\", line 73, in sage.ext.c_lib.sig_raise_exception (sage/ext/c_lib.c:835)\nKeyboardInterrupt\n__SAGE__"}︡
︠d0858dc3-8423-4b4f-ae06-a1f70f5c9785︠
is_prime(N)
︡efdb076a-9c84-46ee-b7c1-6bc3d498616f︡{"stdout": "False"}︡
︠3be11040-f880-4b52-832d-edda560df8cd︠
miller_rabin(N,1)
︡6be44996-ad75-4f6b-8fd2-c8f3ccd12bc6︡{"stdout": "False"}︡
︠8cc6c0d1-102a-4fe2-b4fc-90bb409215f7︠
all([not miller_rabin(N,1) for muda in srange(1000)])
︡0008ba0b-f06f-46d4-b384-3799490ac52b︡{"stdout": "^C"}︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_36.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"YWxsKFtub3QgbWlsbGVyX3JhYmluKE4sMSkgZm9yIG11ZGEgaW4gc3JhbmdlKDEwMDApXSk=\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpVr0GnX/___code___.py\", line 3, in <module>\n    exec compile(u'all([not miller_rabin(N,_sage_const_1 ) for muda in srange(_sage_const_1000 )])' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpikiCrn/___code___.py\", line 9, in miller_rabin\n    if not miller_rabin2a(n,a,d) and not miller_rabin2b(n,a,s,d):\n  File \"/tmp/tmpewyU6h/___code___.py\", line 4, in miller_rabin2b\n    L = [_sage_const_1  for r in srange(s) if (power_mod(a,(_sage_const_2 **r)*d,n)+_sage_const_1 )%n == _sage_const_0 ]\n  File \"/usr/lib/sagemath/local/lib/python2.7/site-packages/sage/rings/arith.py\", line 2076, in power_mod\n    if n&1 != 0:\n  File \"c_lib.pyx\", line 176, in sage.ext.c_lib.sage_python_check_interrupt (sage/ext/c_lib.c:1634)\n  File \"c_lib.pyx\", line 73, in sage.ext.c_lib.sig_raise_exception (sage/ext/c_lib.c:835)\nKeyboardInterrupt\n__SAGE__"}︡









