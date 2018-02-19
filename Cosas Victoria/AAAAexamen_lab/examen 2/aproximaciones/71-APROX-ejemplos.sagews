︠7c55bebf-c597-4942-a8cc-1b53b366d77di︠
%html
<h4>Ejemplo -1</h4>

︡4482b771-6ae7-4ab1-ad1f-7f0dbe521c06︡{"html": "<h4>Ejemplo -1</h4>"}︡
︠f898245e-0134-4ef5-b285-6ef3af992c98︠
NR0 = RealField(prec=2048)
︡b4fe9a77-18d7-4b41-aec6-c7378166e6ce︡︡
︠5a18292c-ad0a-414e-823c-aff9fbc99249︠
NR0(pi)
︡1cdeed07-6c23-4572-b9b3-747565a8ec99︡{"stdout": "3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609433057270365759591953092186117381932611793105118548074462379962749567351885752724891227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145264"}︡
︠1fbb5351-717c-4b2c-a795-47aa82ae6650︠
C = str(NR0(pi))
︡78669710-5f69-4422-a745-bae2d7ec6fbf︡︡
︠882bd323-6775-4f42-8c0f-4063eeecef30︠
len(C)
︡9024c5d5-7671-407e-b247-2d8a16bdf038︡{"stdout": "617"}︡
︠0484c5e0-d868-4c62-85c0-1ae6d61a5dec︠
C[:2]
︡c8f15d0a-7f8f-4a1e-a5da-9a9d2e873da1︡{"stdout": "'3.'"}︡
︠39446705-8cd0-41b4-b7cc-937fcb648bf9︠
(2048/(617-1)).n() #bits por cifra en promedio
︡1837679b-7395-4daa-bfd8-cde8ababc710︡{"stdout": "3.32467532467532"}︡
︠b8f79c95-fdd9-43f4-a7eb-458ad5289362︠
N(pi,digits=616)
︡b1d7d93c-cb4b-422e-86b2-e02a4fe6c66e︡{"stdout": "3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609433057270365759591953092186117381932611793105118548074462379962749567351885752724891227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145264"}︡
︠ae162449-04d0-4835-92fb-7b86b2dd11c5i︠
%html
<h4>Ejemplo 0</h4>

︡ba44854c-5846-4218-b4b8-09c923fb9517︡{"html": "<h4>Ejemplo 0</h4>"}︡
︠dce6e42e-97b6-4436-8f30-af5e503642be︠
1.1+1.1+1.1==3.3 #No son iguales ¿Por qué?
︡e74e9c9d-160a-4032-8925-72aa043fff41︡{"stdout": "False"}︡
︠6add2a73-58bf-44a3-96f0-18d8c27bc1be︠
bool(1.1+1.1+1.1==3.3+0.0)
︡a4312fdb-7094-476a-bcd7-f59a1ac2075c︡{"stdout": "False"}︡
︠e94a37f9-c53d-4375-91c2-b6def2b446a2︠
type(1.1+1.1+1.1)==type(3.3+0.0)
︡efab60c1-5948-47e1-b0f3-da34ba9a2050︡{"stdout": "True"}︡
︠4a9efe27-d81e-4309-abb6-e9dee4b16c6e︠
1.1+1.1+1.1-3.3
︡f7ca3991-361c-4b98-8faf-b273786cc66a︡{"stdout": "4.44089209850063e-16"}︡
︠97082226-bbb7-4cbd-a350-63f9781d4b1ei︠
%html
<p>Debido a los errores de redondeo, $1.1+1.1+1.1-3.3 $ resulta ser, para el ordenador, &nbsp;del orden de $4\cdot 10^{-16}$ y, por tanto no es cero. Cuando preguntamos a SAGE si dos enteros o racionales son iguales la respuesta es fiable, si en cambio son decimales NO.</p>

︡77b32fe1-4481-4b8b-bd6e-691f9987c11c︡{"html": "<p>Debido a los errores de redondeo, $1.1+1.1+1.1-3.3 $ resulta ser, para el ordenador, &nbsp;del orden de $4\\cdot 10^{-16}$ y, por tanto no es cero. Cuando preguntamos a SAGE si dos enteros o racionales son iguales la respuesta es fiable, si en cambio son decimales NO.</p>"}︡
︠5179c099-9f5d-4fed-af07-f67be2aef89b︠
R = RealField(2048)
︡552ad4fe-a85a-459b-9379-747bf2f1c7a9︡︡
︠f289cf51-c10f-4389-b8fe-e8eed7765982︠
R(1.1+1.1+1.1-3.3)
︡65928f3b-e4ce-4ddf-b52f-c4f1b699c734︡{"stdout": "4.440892098500626161694526672363281250000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e-16"}︡
︠dcb86e02-8de9-47c5-aefc-5b516298ec48i︠
%html
<p>Aunque aumentemos &nbsp;la precisi&oacute;n se obtiene la misma respuesta. Sin embargo:</p>

︡33a86330-8344-40b0-99b9-d4b2a9637687︡{"html": "<p>Aunque aumentemos &nbsp;la precisi&oacute;n se obtiene la misma respuesta. Sin embargo:</p>"}︡
︠62cf5d6f-8b69-440e-a409-3fe7527f6421︠
R(1.1+1.1+1.1+1.1-4.4);R(1.1+1.1+1.1+1.1)==R(4.4);1.1+1.1+1.1+1.1==4.4
︡b9a2ea2c-acfa-4e99-8ad5-0299cd82471d︡{"stdout": "0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\nFalse\nTrue"}︡
︠f1baca35-b4e6-42d6-a10d-435adf667471i︠
%html
<p>En este otro c&aacute;lculo no se producen errores de redondeo y la respuesta es, m&aacute;s o menos, &nbsp;"correcta". &iquest;A qu&eacute; se puede deber que primero responde $False$ y despu&eacute;s $True$?</p>

<h4>Ejemplo 1</h4>

︡e2365343-2dad-4de6-ae71-704175347a1f︡{"html": "<p>En este otro c&aacute;lculo no se producen errores de redondeo y la respuesta es, m&aacute;s o menos, &nbsp;\"correcta\". &iquest;A qu&eacute; se puede deber que primero responde $False$ y despu&eacute;s $True$?</p>\r\n\r\n<h4>Ejemplo 1</h4>"}︡
︠df178245-bce8-4e80-b849-4b504c579ce0︠
NR = RealField(prec=30)
︡c058a824-574c-4724-8c98-af756a7ea512︡︡
︠f529cc0b-b67a-4890-84a0-12db7430652c︠
f(x)=(1-cos(x))/x^2
︡65d52d53-9187-4e5d-ae58-ccc969a2e9ad︡︡
︠163b981f-b0bf-4433-992e-060b606eadc9︠
plot(f,-0.5,0.5)
︡3067a072-4155-4acf-aed3-944e163c01bf︡{"html": "<font color='black'><img src='cell://sage0.png'></font>"}︡
︠0e3ce814-030d-4f84-8f12-8f7a596dc88d︠
taylor(f,x,0,5)
︡d35836e4-2195-478e-9568-892789678be1︡{"stdout": "x |--> 1/720*x^4 - 1/24*x^2 + 1/2"}︡
︠c02baa29-dc95-4604-a159-fd7ffe3cde7f︠
g(x) = cos(x)
︡8eb5e956-6f82-4143-bca5-570200218aa5︡︡
︠796dbb8a-7e4f-4977-b99a-44fc089fd388︠
g(x=NR(1.2*10^(-5)))
︡0f041c9a-d544-4d96-9527-e727563f8781︡{"stdout": "1.0000000"}︡
︠7ecdc985-3dfb-4bd9-93ea-2e62d95ef233i︠
%html
<p>Como, con $prec=30$, el $cos(1.2*10^{-5})$ vale $1.0000000$ el valor de $f(1.2*10^{-5})$ sale cero con un error enorme.</p>

︡d1dcf024-215c-415f-94e0-d51a192f61ed︡{"html": "<p>Como, con $prec=30$, el $cos(1.2*10^{-5})$ vale $1.0000000$ el valor de $f(1.2*10^{-5})$ sale cero con un error enorme.</p>"}︡
︠1446b93c-6567-4ff5-abd0-8a2f14fd4866︠
V = f(x=NR(1.2*10^(-5)));V
︡8342413f-db75-4888-90b5-25b9848ee6b1︡{"stdout": "0"}︡
︠13c816fb-262a-47b8-9fde-2c5c4d234601︠
NR1 = RealField(prec=40)
︡462aca88-88b0-4ae5-a990-daade7f6e2ff︡︡
︠92aeede5-4098-4b6c-a258-b3d1aee74a2a︠
f(x=NR1(1.2*10^(-5)))
︡0ab96254-5b2f-4427-90cf-3662ccd60a34︡{"stdout": "0.49895889889"}︡
︠70267684-90de-466c-ba4e-67617176c475︠
NR2 = RealField(prec=56)
︡957629c6-c89d-4659-b427-482eeba7f8d7︡︡
︠b468608e-25b4-4b88-aa5e-ddb04694f7d7︠
f(x=NR2(1.2*10^(-5)))
︡31f64005-fc37-42b4-b6d8-9c7dc8609a36︡{"stdout": "0.5000000220954802"}︡
︠cd10e3bc-42fb-4096-b1ce-8a6c85c3911c︠
NR3 = RealField(prec=1024)
︡f0921054-c62d-459b-a895-f29a1e8e8ba6︡︡
︠2b8aaf89-4a8e-4707-a0ca-f5be38e047b5︠
V1 = f(x=NR3(1.2*10^(-5)));V1
︡7cb5fca5-2a37-417d-b8ae-0de7079eb012︡{"stdout": "0.4999999999940000000000287996959896367808401946049893137272434253999345548870214160533317730845617285722502432223786603796647722494314281106550122486419291139762883177187870625828619182166257891515121223486872565303968357493572184046760153971092244692489670753101321308165196129357616023322554642414879821846"}︡
︠58a4ca55-5d27-41cf-9742-eac51df75e2bi︠
%html
<p>Vemos que con $prec=40$ son correctas dos de las cifras decimales, aumentando a $prec=56$ se pierden las dos cifras correctas y pas&aacute;ndose con $prec=1024$ se vuelve a obtener un resultado menor que $1/2$, no es dif&iacute;cil demostrar que $f(x)&lt;1/2$ para $x\ne 0$, que deber&iacute;a tener bastantes cifras&nbsp; decimales&nbsp; correctas. El error que se produce&nbsp; en $V$ se llama de "cancelaci&oacute;n" , y se define como un error enorme que aparece al restar dos cantidades muy pr&oacute;ximas que s&oacute;lo difieren en cifras m&aacute;s all&aacute; de la precisi&oacute;n que estamos usando en el c&aacute;lculo.</p>

︡4eb41671-d98f-400f-913b-c8cade0b8ea1︡{"html": "<p>Vemos que con $prec=40$ son correctas dos de las cifras decimales, aumentando a $prec=56$ se pierden las dos cifras correctas y pas&aacute;ndose con $prec=1024$ se vuelve a obtener un resultado menor que $1/2$, no es dif&iacute;cil demostrar que $f(x)&lt;1/2$ para $x\\ne 0$, que deber&iacute;a tener bastantes cifras&nbsp; decimales&nbsp; correctas. El error que se produce&nbsp; en $V$ se llama de \"cancelaci&oacute;n\" , y se define como un error enorme que aparece al restar dos cantidades muy pr&oacute;ximas que s&oacute;lo difieren en cifras m&aacute;s all&aacute; de la precisi&oacute;n que estamos usando en el c&aacute;lculo.</p>"}︡
︠5e7c5cf1-4e2a-4f4f-a15f-5948217b1457︠
NR4 = RealField(prec=2048)
︡d03cddd6-e845-4b35-8bbb-d2c7acc9592b︡︡
︠3c0ca23d-0d67-4e23-8494-fdfbaef49166︠
V2 = f(x=NR4(1.2*10^(-5)));V2
︡363378e7-9fb2-4d5d-bb8d-01c667f69a22︡{"stdout": "0.4999999999940000000000287996959896367808401946049893137272434253999345548870214160533317730845617285722502432223786603796647722494314281106550122486419291139762883177187870625828619182166257891515121223486872565303968357493572184046760153971092244692489670753101321308165196129357616023322554642414870456418543638973129377268343117471789823088189449541231129087592748968562522092878449769309652637472158867643382603013683636349597161832640383334439630293346195460796416860554034393996820351981332104220873571808970953714644046636865487171353767152907515793470337839573319942150988595039681068818739774665119878135721"}︡
︠e6d42890-74af-41cc-9c50-776c5f9ac38di︠
%html
<p>Al aumentar la precisi&oacute;n a $prec=2048$ s&oacute;lo las &uacute;ltimas $7$ cifras decimales de $V1$ no se mantienen. El error que se produce en esas &uacute;ltimas $7$ cifras de $V1$&nbsp; es el inherente al c&aacute;lculo con decimales aproximados ("error de redondeo") y es inevitable.&nbsp; Los errores de cancelaci&oacute;n, en general, se pueden evitar aumentando la precisi&oacute;n pero los de redondeo son inevitables y debemos tratar de mantenerlos controlados. </p>

<h4>Ejemplo 2</h4>

<p>Otro ejemplo de cancelaci&oacute;n, ahora en el c&aacute;lculo de las ra&iacute;ces de una ecuaci&oacute;n de segundo grado:</p>

︡e1f6437a-43e9-498d-bc42-39c534c1d089︡{"html": "<p>Al aumentar la precisi&oacute;n a $prec=2048$ s&oacute;lo las &uacute;ltimas $7$ cifras decimales de $V1$ no se mantienen. El error que se produce en esas &uacute;ltimas $7$ cifras de $V1$&nbsp; es el inherente al c&aacute;lculo con decimales aproximados (\"error de redondeo\") y es inevitable.&nbsp; Los errores de cancelaci&oacute;n, en general, se pueden evitar aumentando la precisi&oacute;n pero los de redondeo son inevitables y debemos tratar de mantenerlos controlados. </p>\r\n\r\n<h4>Ejemplo 2</h4>\r\n\r\n<p>Otro ejemplo de cancelaci&oacute;n, ahora en el c&aacute;lculo de las ra&iacute;ces de una ecuaci&oacute;n de segundo grado:</p>"}︡
︠13df7ce9-d0ea-4ce9-a5ee-2e139d4cd588︠
f(x)=(10^(-20))*x^2-3*10^(20)*x+2*10^(20)
︡2ff4358b-db4e-4eee-9b69-952c1098bd80︡︡
︠031c2012-f682-443e-85e0-7a0c12775ee6︠
sols = solve(f,x,solution_dict=True);sols
︡d33cef6b-02f9-4fc8-ac06-821bbd489100︡{"stdout": "[{x: -100000000000000000000*sqrt(22499999999999999999999999999999999999998) + 15000000000000000000000000000000000000000}, {x: 100000000000000000000*sqrt(22499999999999999999999999999999999999998) + 15000000000000000000000000000000000000000}]"}︡
︠e7712441-c416-4b40-bc51-b36dcb3978d0︠
for sol in sols:
    print sol[x].n(digits=10)
︡4d865af9-56ad-4f0f-a5d1-dd3fb24e9c03︡{"stdout": "0.0000000000\n3.000000000e40"}︡
︠10922537-18f8-44b9-aa30-c00e8ec265d5︠
for sol in sols:
    print sol[x].n(digits=20)
︡badda7f1-0b81-4990-bc8f-e19674f9d259︡{"stdout": "0.00000000000000000000\n3.0000000000000000000e40"}︡
︠b2a9e3e4-11cb-4d49-aad3-b03a458fcde3︠
for sol in sols:
    print sol[x].n(digits=40)
︡c2f7e45c-0cc6-44a1-97fb-7af8948ec233︡{"stdout": "0.6250000000000000000000000000000000000000\n3.000000000000000000000000000000000000000e40"}︡
︠f541359b-8b7d-443b-acf0-24209f000c8b︠
for sol in sols:
    print sol[x].n(digits=50)
︡83f4f1a0-4f38-4c93-a0c8-69592ef8abb6︡{"stdout": "0.66666666667151730507612228393554687500000000000000\n2.9999999999999999999999999999999999999999333333333e40"}︡
︠6874b74f-c4f4-47d1-92eb-4bb164017c26i︠
%html
<h4>Ejemplo 3</h4>
<p>De la misma forma en que podemos obtener cancelaciones cuando una diferencia es muy pr&oacute;xima a $0$, podemos obtenerlas cuando multiplicamos por cantidades muy pr&oacute;ximas a $1$, que la m&aacute;quina toma como $1$:</p>

︡c8bc0f76-83a7-427d-9758-3fbb3e9c2934︡{"html": "<h4>Ejemplo 3</h4>\n<p>De la misma forma en que podemos obtener cancelaciones cuando una diferencia es muy pr&oacute;xima a $0$, podemos obtenerlas cuando multiplicamos por cantidades muy pr&oacute;ximas a $1$, que la m&aacute;quina toma como $1$:</p>"}︡
︠ec8c941b-74fe-4d04-824f-7aae3eacc5f1︠
def prueba(x,k):
    for muda in srange(k):
      x = sqrt(x)
    for muda in srange(k):
      x = x*x
    return x
︡74f784fa-eb17-46a9-819c-edb0ef9682ed︡︡
︠f6227521-a52c-44af-a78c-ac1a0712da1b︠
[prueba(100.0,10*k) for k in srange(1,8)]
︡5cf7bd7c-ba08-4f02-bdb4-01bedc06cada︡{"stdout": "[100.000000000006, 100.000000011555, 99.9999770096763, 99.9810245754440, 90.0171269377680, 1.00000000000000, 1.00000000000000]"}︡
︠724df00a-2490-4209-9008-f20ffbc46fe9︠
NR7 = RealField(prec=128)
︡591978e3-074c-4c0f-be1c-62be90270776︡︡
︠adc963a0-f274-4a48-ab1a-e2b7b64e6082︠
def prueba2(x,k):
    for muda in srange(k):
      x = NR7(sqrt(x))
    for muda in srange(k):
      x = NR7(x*x)
    return x
︡145dc871-5daf-4924-beaa-acdc85c76a8e︡︡
︠3d6a88fc-7424-4e5c-a07b-b8d4679c6e4e︠
[prueba2(100.0,10*k) for k in srange(1,8)]
︡6e3d89f5-5752-41e3-a826-c1622d3d5207︡{"stdout": "[99.999999999999999999999999999999999915, 100.00000000000000000000000000000000360, 99.999999999999999999999999999984601618, 99.999999999999999999999999700849351586, 100.00000000000000000000019874119658729, 100.00000000000000000018416370944114861, 99.999999999999999698640434507180424762]"}︡
︠2d995fd1-8f45-4d15-8de6-43252b1de452i︠
%html
<p>Vemos que tambi&eacute;n en este caso aumentando la precisi&oacute;n se resuelve el problema.</p>

<h4>Ejemplo 7</h4>

<p>En c&aacute;lculos en &nbsp;&Aacute;lgebra Lineal num&eacute;rica (&Aacute;lgebra Lineal con datos decimales) &nbsp;se encuentran con cierta frecuencia problemas de "inestabilidad": peque&ntilde;os cambios en los datos producen cambios muy grandes en la soluci&oacute;n calculada.</p>

︡a8607110-29a0-4c5e-905f-626ddafd42e3︡{"html": "<p>Vemos que tambi&eacute;n en este caso aumentando la precisi&oacute;n se resuelve el problema.</p>\n\n<h4>Ejemplo 7</h4>\n\n<p>En c&aacute;lculos en &nbsp;&Aacute;lgebra Lineal num&eacute;rica (&Aacute;lgebra Lineal con datos decimales) &nbsp;se encuentran con cierta frecuencia problemas de \"inestabilidad\": peque&ntilde;os cambios en los datos producen cambios muy grandes en la soluci&oacute;n calculada.</p>"}︡
︠f7ae61ec-62d2-494e-929b-632a38265dd3︠
def hilbert_m(n):
    A = matrix(RR,n,n,[0]*n^2)
    for fila in srange(n):
        for columna in srange(n):
            A[fila,columna]=(1/(fila+columna+1)).n()
    return A
︡efa4d00c-2d99-4cf7-adf2-adc6aec2cecf︡︡
︠0652c3bc-ee8a-4741-9c13-91d67f8fb141︠
M = hilbert_m(5);M
︡0286f0ac-7fda-4002-bc3e-b35004b8b31f︡{"stdout": "[ 1.00000000000000 0.500000000000000 0.333333333333333 0.250000000000000 0.200000000000000]\n[0.500000000000000 0.333333333333333 0.250000000000000 0.200000000000000 0.166666666666667]\n[0.333333333333333 0.250000000000000 0.200000000000000 0.166666666666667 0.142857142857143]\n[0.250000000000000 0.200000000000000 0.166666666666667 0.142857142857143 0.125000000000000]\n[0.200000000000000 0.166666666666667 0.142857142857143 0.125000000000000 0.111111111111111]"}︡
︠75ca051a-309e-459b-879f-81c4397858f8︠
b = M*vector([1,1,1,1,1]);b
︡ca4d6b23-e766-40bf-bfbf-62b744c75cce︡{"stdout": "(2.28333333333333, 1.45000000000000, 1.09285714285714, 0.884523809523809, 0.745634920634921)"}︡
︠c0512c5e-5724-4d57-9c8e-dc52b88de17e︠
M.solve_right(b)
︡b296d230-efa3-4dc9-ae51-837951c899d1︡{"stdout": "(0.999999999999984, 1.00000000000015, 0.999999999999717, 1.00000000000002, 1.00000000000013)"}︡
︠f058696c-7a1a-421d-bef6-077ec345c52ei︠
%html
<p>Resolvemos el sistema con matriz $M$ y vector de t&eacute;rminos independientes $b=M\cdot(1,1,1,1,1)^t$. La soluci&oacute;n, como esperar&iacute;amos, es aproximadamente $(1,1,1,1,1)^t$. Perturbamos ligeramente el elemento $M[4,0]$ de $M$</p>

︡f032d743-c81f-4a30-823b-ba6e2a2e68af︡{"html": "<p>Resolvemos el sistema con matriz $M$ y vector de t&eacute;rminos independientes $b=M\\cdot(1,1,1,1,1)^t$. La soluci&oacute;n, como esperar&iacute;amos, es aproximadamente $(1,1,1,1,1)^t$. Perturbamos ligeramente el elemento $M[4,0]$ de $M$</p>"}︡
︠ba438316-143f-4308-b4ee-9c1eb08ef8e2︠
M[4,0]
︡196b0fcc-9de3-4fa1-98a1-4c3c68d29f7e︡{"stdout": "0.200000000000000"}︡
︠a4d3475b-c1cc-4f81-8131-7beca1bb5b8f︠
M[4,0] += 10^(-5)
︡0e2f33be-4cae-4e90-8ad9-1242f027646a︡︡
︠0979d2e8-3b06-475f-ba49-6366e16a076f︠
M[4,0]
︡f70364ab-dd29-43e7-93a1-9870f8fee7e9︡{"stdout": "0.200010000000000"}︡
︠fe337ded-37a5-4ff2-b3db-eb894c7527fa︠
M.solve_right(b)
︡39fa8979-bbb4-46f1-a95c-0f3e259b4c9f︡{"stdout": "(0.993739441518408, 1.12521116963169, 0.436549736657753, 1.87647818742091, 0.561760906289674)"}︡
︠74b009ce-78f4-4895-8e4b-24995dd3d906i︠
%html
<p>Ahora la soluci&oacute;n difiere mucho de&nbsp;$(1,1,1,1,1)^t$. Por supuesto, SAGE puede hacer este c&aacute;lculo de manera exacta usando el cuerpo $QQ$ de los n&uacute;meros racionales en lugar de $RR$.</p>

︡30b3ea1b-e7a4-489d-819f-bf4bc8c9edf2︡{"html": "<p>Ahora la soluci&oacute;n difiere mucho de&nbsp;$(1,1,1,1,1)^t$. Por supuesto, SAGE puede hacer este c&aacute;lculo de manera exacta usando el cuerpo $QQ$ de los n&uacute;meros racionales en lugar de $RR$.</p>"}︡









