︠c8916e61-f4d6-408b-b6f9-5dadd7ffd44d︠
N(pi,digits=3)
︡05507ee6-7f5c-4f8d-b55d-caf44ab5ad9e︡{"stdout": "3.14"}︡
︠f9d17dc1-7c43-4a6b-ae58-69af04000854︠
N(pi,prec=12)
︡a807ed47-b248-4d3b-b241-ab5eee7ccff5︡{"stdout": "3.14"}︡
︠0463bf2e-0d4f-48f5-98ad-22b74483c4c8︠
NR=RealField(prec=12) #a partir de aquí empieza a calcular ya no simbolicamente, sino con 12bits
︡6f9f5989-07af-45ff-89da-97a348bbddb2︡︡
︠498545f3-641a-4103-bc52-99b66e683cf6︠
NR(pi)
︡a8378190-a685-419c-a53a-643274bed479︡{"stdout": "3.14"}︡
︠3f4bb8a4-a1b7-4e9c-8de7-438a13e4e2d6i︠
%html
<p><span style="font-family: 'arial black', 'avant garde'; font-size: large;">7.2.3.</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">Srinivasa Ramanujan (1914)</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">Hemos visto un m ́etodo, debido a Euler, para aproximar &pi;. En este ejercicio consideramos otro, mucho m ́as reciente y</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">debido a S. Ramanujan. Ejercicio 4.</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">1. Define una funci ́</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">on de Sage suma(N) que devuelve el valor de la suma&nbsp;</span><span style="font-family: 'arial black', 'avant garde'; font-size: large;">n=N</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">X</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">n=0</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">((2n)!) 3 &middot; (42n + 5)</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">.</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">(n!) 6 &middot; (16 (3n+1) )</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">2. Comprueba que 1/suma(N) se aproxima a &pi; cuando N crece.</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">3. Intenta estimar, produciendo un programa adecuado, cuantas cifras correctas de &pi; se obtienen cada vez que a ̃</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">nadimos 10</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">sumandos m ́</span><br /><span style="font-family: 'arial black', 'avant garde'; font-size: large;">as a suma(N), es decir, cada vez que incrementamos N en 10 unidades.</span></p>

︡840eab16-a6e5-4032-8a07-4b3a9850c5e6︡{"html": "<p><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">7.2.3.</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">Srinivasa Ramanujan (1914)</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">Hemos visto un m \u0301etodo, debido a Euler, para aproximar &pi;. En este ejercicio consideramos otro, mucho m \u0301as reciente y</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">debido a S. Ramanujan. Ejercicio 4.</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">1. Define una funci \u0301</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">on de Sage suma(N) que devuelve el valor de la suma&nbsp;</span><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">n=N</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">X</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">n=0</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">((2n)!) 3 &middot; (42n + 5)</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">.</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">(n!) 6 &middot; (16 (3n+1) )</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">2. Comprueba que 1/suma(N) se aproxima a &pi; cuando N crece.</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">3. Intenta estimar, produciendo un programa adecuado, cuantas cifras correctas de &pi; se obtienen cada vez que a \u0303</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">nadimos 10</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">sumandos m \u0301</span><br /><span style=\"font-family: 'arial black', 'avant garde'; font-size: large;\">as a suma(N), es decir, cada vez que incrementamos N en 10 unidades.</span></p>"}︡
︠8a15429d-abb6-45d7-9746-8fce87b5ca0b︠
def suma(N):
    sum=0
    for n in xsrange(N+1):
        a=(((factorial(2*n))**3)*(42*n+5))/(((factorial(n))**6)*(16*(3*n+1)))
        sum+=a
    return sum
︡120563a4-01be-4942-ba7b-704bf556ec21︡︡
︠edbc42d4-1c87-49e2-853a-cce952d83801︠
def comprueba_pi(N):
    L=[]
    NR=RealField(100)
    for j in xsrange(1,N+1):
        b=NR(pi-(1/suma(j)))
        L.append(b)
    return L
︡3a0c65b7-f805-456a-9de3-76e0e9275dfb︡︡
︠8a86135c-87b8-447f-992b-5763ad940ace︠
comprueba_pi(7)
︡37d6b15f-1d09-4e38-8243-350012f76d92︡{"stdout": "[2.9799764919736316223010272217,\n 3.1359693167418743751800204983,\n 3.1414440172617475540255304847,\n 3.1415892290669436377743556858,\n 3.1415925807673892110375141614,\n 3.1415926521206194428432028406,\n 3.1415926535612367313047090028]"}︡









