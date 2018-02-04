︠433ccbca-89c3-473a-adaf-0fb77a82634e︠
def salamin_brent(N,d):
    R = RealField(prec=d) # con d bits de presicion
    a,b,s,k = R(1),R(sqrt(2)/2),R(1/2),0 # las valiables iniciales definidas a la vez, al poner el paretensis, por ejemplo en R(1) pone en forma numerica, el uno en d bits, no en foma numerica
    for muda in xsrange(N):
        k += 1 # foma de hacer el bucle, y porque lo necesita para la s
        a_orig = a
        a = (a+b)/2
        b = sqrt(a_orig*b)
        c = a^2-b^2
        s = s-2^k*c
        p = (2*a^2)/s
    return p
︡59d0780e-6b96-453b-a1e4-fc2f38671ac3︡︡
︠48f55012-ed86-4d88-9aca-8dadd8780467︠
time salamin_brent(20,1000)-pi.n(prec=1000)
︡56bafc38-d6ee-47ae-9781-df43c4f1c471︡{"stdout": "2.69088421750659461181784752880363249853310962303564542895672683753401425183115535116604073998715233056759344819804749857415921077705020118662796808476066989146291118637636328040585153696257627184621250727561965973845633188078119875625779901813422767114196797566188945780006158439645782422621517076859e-294\nTime: CPU 0.01 s, Wall: 0.01 s"}︡
︠1ea82861-c184-436b-8860-82cf28a83582i︠
%html
<p>El n&uacute;mero de decimales que coinciden es igual a $294-1=293.$ La precisi&oacute;n elegida ($1000$ bits) es arbitraria, pero teniendo en cuenta que cada d&iacute;gito decimal ocupa en promedio $4$ bits podemos probar con una precisi&oacute;n de $4d$, con $d$ el n&uacute;mero de decimales correctos que queremos obtener.&nbsp;</p>

︡13e41cac-c8b3-485d-ac76-df1c55659847︡{"html": "<p>El n&uacute;mero de decimales que coinciden es igual a $294-1=293.$ La precisi&oacute;n elegida ($1000$ bits) es arbitraria, pero teniendo en cuenta que cada d&iacute;gito decimal ocupa en promedio $4$ bits podemos probar con una precisi&oacute;n de $4d$, con $d$ el n&uacute;mero de decimales correctos que queremos obtener.&nbsp;</p>"}︡
︠f56f4bbb-b755-4910-8797-8914316de232︠
def salamin_brent2(d):
    R = RealField(prec=4*d)
    a,b,s,k,p = R(1),R(sqrt(2)/2),R(0.5),0,R(10)
    while abs(R(pi)-R(p)) > R(10^(-d+1)): #porque quiero las diez primeras cifras de pi, por eso acoto el eror. abs() significa el valor absoluto de()
        k += 1
        a_orig = a
        a = R((a+b)/2)
        b = R(sqrt(a_orig*b))
        c = R(a^2-b^2)
        s = R(s-2^k*c)
        p = R((2*a^2)/s)
    return R(p)-R(pi),k
︡2ae87c61-8176-444b-87e9-a449dbe78f67︡︡
︠3dc1f8b2-fca1-44fa-80fc-a90bd7389075︠
time salamin_brent2(1000)
︡af2265c2-4474-4211-8eb3-65575fd21c0f︡{"stdout": "(-9.65556097377327944673587811053260632555756748216259774500980009720791557505854420914039610618663000961760161510358361810904265712336544100511529878641775924573156385983029682934465507113796342080955302893190497130370363261131003491894347344828549469876794791990439367663460533820251276626079163301083135467627708830807823354468706391390647021196784714610214062040241939025749224107899407491658227116328599964479679749886420918803375931288170942890768138027053182822310277411203660810382964784923435082123411089894393836296850074780424146562747200474584664628404647543223330825202785257265385011183920184715185378425290153437781502936245051936758320070654001242914141600242429549243929454884923806111267641823165869758172552291749654897720189667812816316281695105244685139025174741225717608588919465372130752644265196382598560351289995973998427951808359538115707638950127626097958734530312602446747369645281035079011786962807203579413043091618719819958990764582878635711418595486538507243450194483867261479802892631536857161586099810198755027306456149073719035239925998198111433939693449792278364061745242287411928489006207475302464728714247683554909356847218715263265667892871457098113401234626212916287e-1201,\n 10)\nTime: CPU 0.00 s, Wall: 0.00 s"}︡
︠3647f77f-216c-4fbb-b678-0b9a183841a5i︠
%html
<p>Si rebajamos la precisi&oacute;n a $3d$ el bucle while es infinito. Queremos ahora comprobar &nbsp;que, como se afirma en las notas, el n&uacute;mero de cifras correctas al ir iterando el procedimiento, es decir al ir aumentando $k$, se duplica en cada paso.</p>

︡726bdb92-77aa-4ac4-b3d3-f2c322771ecf︡{"html": "<p>Si rebajamos la precisi&oacute;n a $3d$ el bucle while es infinito. Queremos ahora comprobar &nbsp;que, como se afirma en las notas, el n&uacute;mero de cifras correctas al ir iterando el procedimiento, es decir al ir aumentando $k$, se duplica en cada paso.</p>"}︡
︠7911267b-2cfc-4c0a-8728-1d87c6279500︠
def salamin_brent2b(d):
    R = RealField(prec=4*d)
    a,b,s,k,p = R(1),R(sqrt(2)/2),R(0.5),0,R(10)
    while abs(R(pi)-R(p)) > R(10^(-d+1)):
        k += 1
        a_orig = a
        a = R((a+b)/2)
        b = R(sqrt(a_orig*b))
        c = R(a^2-b^2)
        s = R(s-2^k*c)
        p = R((2*a^2)/s)
    return abs(ZZ(ceil(log(abs(R(p)-R(pi)),base=10)),base=10)),k
︡004054a3-16a9-4261-aa15-039303c21c58︡︡
︠4f48b1bb-cac7-4f18-be08-028a601745d6︠
time salamin_brent2b(1000)
︡8d4d4501-2e22-443e-9f1b-e166da122889︡{"stdout": "(1200, 10)\nTime: CPU 0.00 s, Wall: 0.00 s"}︡
︠830540be-557d-4b6a-90ea-3dff0ff3713a︠
[(2^t,salamin_brent2b(2^t)[1]) for t in srange(1,11)]
︡54a5743d-82c1-418e-9c5a-14b47cff7311︡{"stdout": "[(2, 1),\n (4, 2),\n (8, 3),\n (16, 4),\n (32, 5),\n (64, 6),\n (128, 7),\n (256, 8),\n (512, 9),\n (1024, 10)]"}︡
︠5bee9c03-e457-48f5-a446-0998440aa6c2︠
import timeit
t1 = timeit.default_timer()
print t1
︡f615d227-681d-4b13-820e-93eea608dc26︡{"stdout": "1453387014.2"}︡
︠54611788-0d3b-44fd-a963-3cc431c1b761︠
def tiempo(N):
    import timeit
    for int in srange(1,N+1):
        t1 = timeit.default_timer()
        salamin_brent2b(2^int)
        t2= timeit.default_timer()
        print t2-t1
︡dbb30522-39ed-42e3-9768-612106d0beeb︡︡
︠b56aba40-8538-4786-835a-5e5200e67ff9︠
tiempo(10)
︡b8ababfd-ae6c-4f90-b3bf-6b74e7dc967c︡{"stdout": "0.00635099411011\n0.00276398658752\n0.00290679931641\n0.0026547908783\n0.00303196907043\n0.0031578540802\n0.00329613685608\n0.00399398803711\n0.00443291664124\n0.00649309158325"}︡
︠1f3fe5c0-85c3-4d8e-a847-5ac2070160f5︠
tiempo(20)
︡ebb918ca-4830-4b13-9b2c-5021c94a7a74︡{"stdout": "0.00062084197998\n0.000479936599731\n0.000478982925415\n0.000535011291504\n0.000598907470703\n0.000757932662964\n0.000906944274902\n0.0012800693512\n0.00202608108521\n0.00399398803711\n0.012953042984\n0.0316469669342\n0.0858430862427\n0.262590169907\n0.80903506279\n2.784512043\n7.70735383034\n20.5763990879\n48.7188079357\n113.642480135"}︡
︠aa2592e1-2a57-4a5d-af97-ed504cfcf724︠
2^20
︡fbc69cc8-5e88-49a7-8c38-0632619dad88︡{"stdout": "1048576"}︡









