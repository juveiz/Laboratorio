︠9c86cb53-2e67-4e93-9481-ba81740e52e4i︠
%html
<p>Define una funcion que encuentre y devuelva , la fraccion, con denominador de maximo k cifras que mejor se aprox a pi</p>

︡d37aa831-3b76-4780-a5aa-44a46057630c︡{"html": "<p>Define una funcion que encuentre y devuelva , la fraccion, con denominador de maximo k cifras que mejor se aprox a pi</p>"}︡
︠adefaad5-fb58-44dd-b5c6-e5df67178975︠
def aproxracionalpi_01(k):
    L1=[]
    L2=[]
    for b in srange(10^(k-1),10^k):
        Lb=[]
        for a in srange(ceil(3.14*b),floor(3.142*b)):
            Lb.append(pi-a/b)
        Lb.sort()
        for a in srange(ceil(3.14*b),floor(3.142*b)):
            if Lb[0]==(pi-a/b):
                L1.append(a/b)
                L2.append(pi-a/b)
    L2.sort()
    for h in srange(len(L1)):
        if L2[0]==(pi-L1[h]):
            return L1[h]
︡d8eef605-23c3-482c-85e2-6f31960db2bd︡︡
︠f2a0a86e-545b-463f-b628-15b6ea7519f4︠
aproxracionalpi_01(5)
︡dbce71d0-b149-42a6-8625-d450de860804︡{"stdout": "^C"}︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_11.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"YXByb3hyYWNpb25hbHBpXzAxKDUp\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpt7rjYU/___code___.py\", line 3, in <module>\n    exec compile(u'aproxracionalpi_01(_sage_const_5 )' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpZ5D4Kn/___code___.py\", line 12, in aproxracionalpi_01\n    if Lb[_sage_const_0 ]==(pi-a/b):\n  File \"sage/symbolic/expression.pyx\", line 2425, in sage.symbolic.expression.Expression.__nonzero__ (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/symbolic/expression.cpp:15237)\n  File \"/home/sageserver/sage/local/lib/python2.7/site-packages/sage/symbolic/assumptions.py\", line 504, in assumptions\n    def assumptions(*args):\n  File \"sage/ext/interrupt/interrupt.pyx\", line 197, in sage.ext.interrupt.interrupt.sage_python_check_interrupt (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/ext/interrupt/interrupt.c:1743)\n  File \"sage/ext/interrupt/interrupt.pyx\", line 86, in sage.ext.interrupt.interrupt.sig_raise_exception (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/ext/interrupt/interrupt.c:884)\nKeyboardInterrupt\n__SAGE__"}︡
︠47056d7c-c404-4113-b53a-7c2528f958fc︠
n(3119/993)
︡2734c9d2-c4c9-40dc-86ec-dca703302622︡{"stdout": "3.14098690835851"}︡
︠136db5b4-649b-45f5-bfe7-25f58daecf91i︠
%html
<p>escribir un codigo q tomando un r&gt;1 &nbsp;y un numero dado de k pasos halle los a0................ak de la fraccion continua de r</p>
<p>me daba un error de punto flotante asiq como n sabia que era he reservado 64 bits para cada numero del que queremos saber su fraccion continua ,&nbsp;</p>
<p>este programa puede tener errores a partir de k=6</p>
<p><span style="color: #00ff00;">Conseguido</span></p>

︡3347d9a7-2258-408a-9979-2356362b2127︡{"html": "<p>escribir un codigo q tomando un r&gt;1 &nbsp;y un numero dado de k pasos halle los a0................ak de la fraccion continua de r</p>\n<p>me daba un error de punto flotante asiq como n sabia que era he reservado 64 bits para cada numero del que queremos saber su fraccion continua ,&nbsp;</p>\n<p>este programa puede tener errores a partir de k=6</p>\n<p><span style=\"color: #00ff00;\">Conseguido</span></p>"}︡
︠90ca33cd-0ffe-43d7-acf0-8460f794bed8︠
def fc(r,k):
    b=n(r,prec=64)
    L1=[]
    a=b
    for j in srange(1,k+1):
        if a==0:
            return L1
        if a!=0:
            c=floor(a)
            L1.append(c)
            a=((a-c)**(-1))
    return L1
︡61b8df4a-02d8-44ff-a7e4-db73d309423d︡︡
︠8eab7742-3ed5-47fb-8b71-85999a1ba20a︠
fc(55/43,7)
︡955167cf-43a6-48e3-8f8d-74d98edb17cb︡{"stdout": "[1, 3, 1, 1, 2, 1, 1]"}︡
︠c1810943-c248-4a88-ab19-b5873e3a8b89i︠
%html
<p>Problema 12 preexamen parcial 1</p>
<p>la sucesion de numeros triangulares d&iexcl;se genera sumando los numeros naturales, asi el tercer triangular es 1+2+3=6</p>
<p>&iquest;Cual es el valor del primer triangular que tiene mas de 500 divisores?</p>
<p><span style="color: #00ff00;">Conseguido</span></p>

︡f69ffd7e-82f4-4a0d-b751-376c400d8472︡{"html": "<p>Problema 12 preexamen parcial 1</p>\n<p>la sucesion de numeros triangulares d&iexcl;se genera sumando los numeros naturales, asi el tercer triangular es 1+2+3=6</p>\n<p>&iquest;Cual es el valor del primer triangular que tiene mas de 500 divisores?</p>\n<p><span style=\"color: #00ff00;\">Conseguido</span></p>"}︡
︠d746d7db-b5ab-460d-88e6-bac3023555a7︠
def triangular(n):
    return sum(srange(1,n+1))
︡247b1d4b-a030-487e-b0bb-e6f24fab240d︡︡
︠fb201b79-bd72-49ff-9e59-75547c09bc83︠
def pregunta(N):
    for j in NN:
        if j!=0:
            if len(divisors(triangular(j)))>=N:
                return triangular(j), j
︡b61fe180-69c0-45cc-8aa7-a87c3fb940e9︡︡
︠a4751a5f-3255-4b64-a856-65977b4a645f︠
pregunta(500)
︡be732c52-dc54-4402-943b-7b8397028aae︡{"stdout": "(76576500, 12375)"}︡
︠84a66ea8-64f1-415c-a3c6-90e12ac22f5a︠
len(divisors(triangular(12374)))
︡ce5e59e8-03be-44e5-a399-0079a3b8b194︡{"stdout": "96"}︡
︠ae584f22-c93f-4328-a429-f5e8c2fd8346︠
pi.exact_rational()
︡35c72a41-0754-4bb6-8190-a77c64c4e994︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_6.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"cGkuZXhhY3RfcmF0aW9uYWwoKQ==\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmppoqnuZ/___code___.py\", line 2, in <module>\n    exec compile(u'pi.exact_rational()' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"sage/structure/element.pyx\", line 418, in sage.structure.element.Element.__getattr__ (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/structure/element.c:4679)\n  File \"sage/structure/misc.pyx\", line 259, in sage.structure.misc.getattr_from_other_class (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/structure/misc.c:1669)\nAttributeError: 'sage.symbolic.expression.Expression' object has no attribute 'exact_rational'"}︡
︠15b97ca9-78b6-4ee9-bc91-7ee3c91f13b1︠
n(e)
︡878990d5-93e9-4798-897a-d00fd8b36cbf︡{"stdout": "2.71828182845905"}︡
︠6b7dcd29-96fe-4564-ba24-11a3b1e29fa5︠
fc(pi,7)
︡6224f92a-7b5d-43b5-9eda-f17ecc6e7940︡{"stdout": "[3, 7, 15, 1, 292, 1, 1]"}︡
︠d815cfa4-1500-4fe2-bdc5-adf7260ced71︠
fc(sqrt(2),7)
︡37906321-1616-4d5e-ac24-e8e50c791a1b︡{"stdout": "[1, 2, 2, 2, 2, 2, 2]"}︡
︠01069475-f597-4fdd-8a26-83687602049c︠
fc((1+sqrt(5))*(1/2),7)
︡976b9e2f-cb74-4eba-9373-6e909d049d8b︡{"stdout": "[1, 1, 1, 1, 1, 1, 1]"}︡









