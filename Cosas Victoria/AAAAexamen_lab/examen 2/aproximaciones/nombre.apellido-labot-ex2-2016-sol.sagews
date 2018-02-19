︠652a3927-7c27-4021-94e5-ecbb99c5975ei︠
%html
<p><span style="color: #ff0000;">Por favor, antes de empezar el examen cambia el nombre de la hoja (File&gt;Rename worksheet) poniendo en lugar de "nombre.apellido" los tuyos tal como aparecen en tu direcci&oacute;n de correo electr&oacute;nico de la UAM. El final del nombre de la hoja, -labot-ex2-2016, dej&aacute;lo como est&aacute;.<br /></span></p>
<p><span style="color: #ff0000;">Una vez hayas terminado el examen, salva la hoja (File&gt;Save worksheet to a file....) y d&eacute;jala en la carpeta en tu escritorio con nombre "ENTREGA......".</span></p>
<h4><span style="color: #ff0000;"><span style="color: #000000;">Ejercicio 1</span><br /></span></h4>
<p>&nbsp;<span style="color: #ff0000;">(2 puntos)</span> <span style="color: #ff0000;">Define&nbsp; funciones</span> $H(n,nbits)$&nbsp; y $H2(n,nbits)$ que devuelvan la suma $\sum_{k=1}^{k=n} \frac{1}{k}$ calculada con precisi&oacute;n igual a $nbits$. Las dos funciones ser&aacute;n esencialmente iguales,&nbsp; pero $H$ realizar&aacute; todos los c&aacute;lculos con n&uacute;meros decimales de la precisi&oacute;n fijada mientras que&nbsp; $H2$ debe efectuar los c&aacute;lculos con racionales,&nbsp; y &uacute;nicamente al devolver el resultado debe convertir a decimal de $nbits$ de precisi&oacute;n.<span style="color: #ff0000;"> &iquest;Qu&eacute; ense&ntilde;a este ejemplo?</span></p>

︡08704fe3-fdda-428b-becc-24ccdb9d26d5︡{"html": "<p><span style=\"color: #ff0000;\">Por favor, antes de empezar el examen cambia el nombre de la hoja (File&gt;Rename worksheet) poniendo en lugar de \"nombre.apellido\" los tuyos tal como aparecen en tu direcci&oacute;n de correo electr&oacute;nico de la UAM. El final del nombre de la hoja, -labot-ex2-2016, dej&aacute;lo como est&aacute;.<br /></span></p>\r\n<p><span style=\"color: #ff0000;\">Una vez hayas terminado el examen, salva la hoja (File&gt;Save worksheet to a file....) y d&eacute;jala en la carpeta en tu escritorio con nombre \"ENTREGA......\".</span></p>\r\n<h4><span style=\"color: #ff0000;\"><span style=\"color: #000000;\">Ejercicio 1</span><br /></span></h4>\r\n<p>&nbsp;<span style=\"color: #ff0000;\">(2 puntos)</span> <span style=\"color: #ff0000;\">Define&nbsp; funciones</span> $H(n,nbits)$&nbsp; y $H2(n,nbits)$ que devuelvan la suma $\\sum_{k=1}^{k=n} \\frac{1}{k}$ calculada con precisi&oacute;n igual a $nbits$. Las dos funciones ser&aacute;n esencialmente iguales,&nbsp; pero $H$ realizar&aacute; todos los c&aacute;lculos con n&uacute;meros decimales de la precisi&oacute;n fijada mientras que&nbsp; $H2$ debe efectuar los c&aacute;lculos con racionales,&nbsp; y &uacute;nicamente al devolver el resultado debe convertir a decimal de $nbits$ de precisi&oacute;n.<span style=\"color: #ff0000;\"> &iquest;Qu&eacute; ense&ntilde;a este ejemplo?</span></p>"}︡
︠cab3cd58-3a25-4ab0-9436-be8e35a32d01︠
def H(n,nbits):
    R = RealField(prec=nbits)
    S = R(0)
    for j in xsrange(1,n+1):
        S += R(1/j)
    return S
︡a4c1de9c-99f0-4dfc-9dd0-dccb69c48c56︡︡
︠0e0b6389-6a99-4353-91b0-6d42cf5fcd28︠
def H2(n,nbits):
    R = RealField(prec=nbits)
    S = 0
    for j in xsrange(1,n+1):
        S += 1/j
    return R(S)
︡8895bced-4a34-492c-999c-754d9c6f422c︡︡
︠1690bcff-6fa7-472d-aa56-2c65cb618273︠
time H(5*10^5,50)
︡6ad31166-5a35-49da-bb84-7bd819e55b2e︡{"stdout": "13.699580042309\nTime: CPU 0.41 s, Wall: 0.41 s"}︡
︠b85c7cb3-fa73-4bf8-8a8c-0fbe9d54a154︠
time H2(5*10^5,50)
︡62355399-3f98-41bb-8d85-f4513c2d6502︡{"stdout": "13.699580042306\nTime: CPU 34.49 s, Wall: 34.51 s"}︡
︠afc51de1-14b6-482b-9d10-bf5701c784a6i︠
%html
<p>En muchos de los c&aacute;lculos que nos interesan, en este cap&iacute;tulo 7,&nbsp; sumamos t&eacute;rminos de series de n&uacute;meros racionales. Si efectuamos la suma como n&uacute;meros racionales corremos el peligro de que las fracciones implicadas tengan numeradores y denominadores grandes,&nbsp; lo que hace que el c&aacute;lculo exacto con racionales sea muy costoso. Si lo que realmente nos interesa es el resultado final como decimal con un cierto n&uacute;mero de bits de precisi&oacute;n&nbsp; y no la fracci&oacute;n que determina ese decimal, <span style="color: #ff0000;">este ejemplo muestra</span> que nos conviene hacer todos los c&aacute;lculos con decimales de la precisi&oacute;n fijada.</p>
<h4>Ejercicio 2</h4>
<p>Sabemos que la serie $\sum_{k=1}^{k=\infty} \frac{1}{k}$ es divergente. Adem&aacute;s, sabemos que sus sumas parciales $H_n:=\sum_{k=1}^{k=n} \frac{1}{k}$&nbsp; tienen un valor no muy diferente a $log(n)$ (logaritmo neperiano siempre) ya que</p>
<p>\[\int_1^x \frac{1}{t}dt=log(x),\]</p>
<p>y $H_n$ es una suma de Riemann de esta integral con los puntos de la partici&oacute;n con coordenadas enteras. Podemos entonces decir que la serie diverge (aproximadamente) como el logaritmo.</p>
<p>Euler defini&oacute; la constante</p>
<p>\[\gamma:=\lim_{n\to \infty}(H_n-log(n)),\]</p>
<p>cuya existencia nos indica que la diferencia entre $H_n$ y el logaritmo de $n$ no crece con $n$. Sage dispone de un procedimiento, $euler\_gamma$, para calcular con la precisi&oacute;n que queramos la constante de Euler.</p>
<ol><ol><ol>
<li><span style="color: #ff0000;">(1 punto) Define una funci&oacute;n</span> $mi\_gamma1(n,nbits)$ que calcule el t&eacute;rmino $n$-&eacute;simo de la sucesi&oacute;n que define $gamma$ con $nbits$ de precisi&oacute;n.</li>
<li><span style="color: #ff0000;"><span style="color: #ff0000;">(1 punto)</span> Define una funci&oacute;n</span> $mi\_gamma2(n,nbits)$ que calcule \[\gamma_n:= \sum_{k=1}^{k=n} \frac{1}{n}\left(\left\lceil \frac{n}{k}\right\rceil -\frac{n}{k}\right)\] con $nbits$ de precisi&oacute;n. La notaci&oacute;n $\lceil x\rceil$ indica la parte entera por exceso de $x$. El l&iacute;mite, cuando $n$ tiende a infinito, de $\gamma_n$ se sabe que es $\gamma$.</li>
<li><span style="color: #ff0000;"><span style="color: #ff0000;"><span style="color: #ff0000;">(1 punto)</span></span> Define una funci&oacute;n</span> $mi\_gamma3(n,nbits)$ que calcule $gamma$ sumando $n$ t&eacute;rminos de la serie \[\sum_{k=1}^{k=\infty} \left(\frac{1}{k}-log(1+\frac{1}{k})\right),\] que tambi&eacute;n converge a $\gamma.$</li>
<li><span style="color: #ff0000;"><span style="color: #ff0000;"><span style="color: #ff0000;">(1 punto)</span></span> Compara</span> la cantidad de cifras correctas obtenidas y los tiempos de c&aacute;lculo para los tres m&eacute;todos,&nbsp; usando $n=10^6$ y&nbsp; fijando la precisi&oacute;n &oacute;ptima mediante experimentaci&oacute;n. <span style="color: #ff0000;">&iquest;Qu&eacute; conclusiones obtienes y cu&aacute;l puede ser el motivo?</span></li>
</ol></ol></ol>
<p>&nbsp;</p>

︡4a7e3c93-1e6d-44fe-b0d9-f40b2b841dfe︡{"html": "<p>En muchos de los c&aacute;lculos que nos interesan, en este cap&iacute;tulo 7,&nbsp; sumamos t&eacute;rminos de series de n&uacute;meros racionales. Si efectuamos la suma como n&uacute;meros racionales corremos el peligro de que las fracciones implicadas tengan numeradores y denominadores grandes,&nbsp; lo que hace que el c&aacute;lculo exacto con racionales sea muy costoso. Si lo que realmente nos interesa es el resultado final como decimal con un cierto n&uacute;mero de bits de precisi&oacute;n&nbsp; y no la fracci&oacute;n que determina ese decimal, <span style=\"color: #ff0000;\">este ejemplo muestra</span> que nos conviene hacer todos los c&aacute;lculos con decimales de la precisi&oacute;n fijada.</p>\r\n<h4>Ejercicio 2</h4>\r\n<p>Sabemos que la serie $\\sum_{k=1}^{k=\\infty} \\frac{1}{k}$ es divergente. Adem&aacute;s, sabemos que sus sumas parciales $H_n:=\\sum_{k=1}^{k=n} \\frac{1}{k}$&nbsp; tienen un valor no muy diferente a $log(n)$ (logaritmo neperiano siempre) ya que</p>\r\n<p>\\[\\int_1^x \\frac{1}{t}dt=log(x),\\]</p>\r\n<p>y $H_n$ es una suma de Riemann de esta integral con los puntos de la partici&oacute;n con coordenadas enteras. Podemos entonces decir que la serie diverge (aproximadamente) como el logaritmo.</p>\r\n<p>Euler defini&oacute; la constante</p>\r\n<p>\\[\\gamma:=\\lim_{n\\to \\infty}(H_n-log(n)),\\]</p>\r\n<p>cuya existencia nos indica que la diferencia entre $H_n$ y el logaritmo de $n$ no crece con $n$. Sage dispone de un procedimiento, $euler\\_gamma$, para calcular con la precisi&oacute;n que queramos la constante de Euler.</p>\r\n<ol><ol><ol>\r\n<li><span style=\"color: #ff0000;\">(1 punto) Define una funci&oacute;n</span> $mi\\_gamma1(n,nbits)$ que calcule el t&eacute;rmino $n$-&eacute;simo de la sucesi&oacute;n que define $gamma$ con $nbits$ de precisi&oacute;n.</li>\r\n<li><span style=\"color: #ff0000;\"><span style=\"color: #ff0000;\">(1 punto)</span> Define una funci&oacute;n</span> $mi\\_gamma2(n,nbits)$ que calcule \\[\\gamma_n:= \\sum_{k=1}^{k=n} \\frac{1}{n}\\left(\\left\\lceil \\frac{n}{k}\\right\\rceil -\\frac{n}{k}\\right)\\] con $nbits$ de precisi&oacute;n. La notaci&oacute;n $\\lceil x\\rceil$ indica la parte entera por exceso de $x$. El l&iacute;mite, cuando $n$ tiende a infinito, de $\\gamma_n$ se sabe que es $\\gamma$.</li>\r\n<li><span style=\"color: #ff0000;\"><span style=\"color: #ff0000;\"><span style=\"color: #ff0000;\">(1 punto)</span></span> Define una funci&oacute;n</span> $mi\\_gamma3(n,nbits)$ que calcule $gamma$ sumando $n$ t&eacute;rminos de la serie \\[\\sum_{k=1}^{k=\\infty} \\left(\\frac{1}{k}-log(1+\\frac{1}{k})\\right),\\] que tambi&eacute;n converge a $\\gamma.$</li>\r\n<li><span style=\"color: #ff0000;\"><span style=\"color: #ff0000;\"><span style=\"color: #ff0000;\">(1 punto)</span></span> Compara</span> la cantidad de cifras correctas obtenidas y los tiempos de c&aacute;lculo para los tres m&eacute;todos,&nbsp; usando $n=10^6$ y&nbsp; fijando la precisi&oacute;n &oacute;ptima mediante experimentaci&oacute;n. <span style=\"color: #ff0000;\">&iquest;Qu&eacute; conclusiones obtienes y cu&aacute;l puede ser el motivo?</span></li>\r\n</ol></ol></ol>\r\n<p>&nbsp;</p>"}︡
︠517a3f7a-7752-40e7-a18a-952e07f38c38︠
##Apartado 1
def mi_gamma1(n,nbits):
    R = RealField(prec=nbits)
    return -R(log(n))+H(n,nbits)
︡721ed031-5cc2-4ddc-99f1-7cb2ec0c803a︡︡
︠d06294fa-394f-4528-980b-56184d4114ea︠
##Apartado 2
def F(n,nbits):
    R = RealField(prec=nbits)
    S = 0
    for j in xsrange(1,n+1):
        x = R(n/j)
        S += ceil(x)-x
    return S
︡2a8edf56-c3a1-408c-b1f0-a69fe6f0760a︡︡
︠92709fe1-735b-48b0-87e0-69fd0685fd5d︠
def mi_gamma2(n,nbits):
    R = RealField(prec=nbits)
    return R(F(n,nbits)/n)
︡0afa4cc5-220b-45af-8d20-c72c38ecac51︡︡
︠7cfc64bd-7954-4074-956e-4331326b9038︠
##Apartado 3
def mi_gamma3(n,nbits):
    R = RealField(prec=nbits)
    S = 0
    for j in xsrange(1,n+1):
        x = R(1/j)
        S += x-R(log(1+x))
    return S
︡76b3d2b2-8e98-404b-8fd6-5c013b73f3d1︡︡
︠7d85ce24-eb06-48b8-a831-7d5ae33b73d4︠
##Apartado 4
euler_gamma.n()
︡b5616edb-dccb-480a-b94a-0d0845610b8c︡{"stdout": "0.577215664901533"}︡
︠078f039f-fa9d-4501-8c99-799e9bd07c84︠
time mi_gamma1(10^6,53)
︡6820b8b1-8491-468f-adfa-3cac61bba266︡{"stdout": "0.577216164900715\nTime: CPU 0.82 s, Wall: 0.82 s"}︡
︠e4484096-8cc8-4c13-b744-663cf02d6773︠
time mi_gamma1(10^6,106)
︡58590d56-b81d-4ca8-b62f-b0323c1392df︡{"stdout": "0.5772161649014495272731787649864\nTime: CPU 0.84 s, Wall: 0.84 s"}︡
︠ed2a94e7-2018-4dc5-8494-30863c72a734i︠
%html
<p>En este caso vemos que la precisi&oacute;n est&aacute;ndar de $53$ bits es suficiente para obtener $5$ cifras decimales correctas, y que no obtenemos m&aacute;s cifras correctas por aumentar la precisi&oacute;n.</p>

︡3708e5c8-5776-4634-a6eb-9d85116c798d︡{"html": "<p>En este caso vemos que la precisi&oacute;n est&aacute;ndar de $53$ bits es suficiente para obtener $5$ cifras decimales correctas, y que no obtenemos m&aacute;s cifras correctas por aumentar la precisi&oacute;n.</p>"}︡
︠3c012a49-689a-48c8-95e7-f7dad68d2fff︠
time mi_gamma2(10^6,53)
︡d539a73f-3d15-4911-be03-c50fd3a4ca44︡{"stdout": "0.577258277134282\nTime: CPU 3.72 s, Wall: 3.73 s"}︡
︠033e4ddf-cd48-4d71-83c3-f6d2ac21fa72︠
time mi_gamma2(10^6,106)
︡181e3970-c50e-4e8e-a4bf-e01c44a416ab︡{"stdout": "0.5772582771342763686188725068125\nTime: CPU 3.76 s, Wall: 3.76 s"}︡
︠3554eed8-3aa2-423b-bf58-5e749deeaac6i︠
%html
<p>Vemos que el segundo m&eacute;todo obtiene s&oacute;lo $4$ cifras decimales correctas y tarda m&aacute;s de cuatro veces m&aacute;s.</p>

︡0bb2cae7-5536-4167-860d-68644a2e5a9f︡{"html": "<p>Vemos que el segundo m&eacute;todo obtiene s&oacute;lo $4$ cifras decimales correctas y tarda m&aacute;s de cuatro veces m&aacute;s.</p>"}︡
︠571e6a33-46f4-4404-9a14-91a0af2e9ef1︠
time mi_gamma3(10^6,53)
︡d9600007-0b38-4eb1-b357-7208b3dc4b0f︡{"stdout": "0.577215164902028\nTime: CPU 17.28 s, Wall: 17.29 s"}︡
︠d0ce7b70-f012-4f6a-8492-6a3e00d87529︠
time mi_gamma3(10^6,106)
︡ad3a4879-3e18-439b-8862-3946c8859325︡{"stdout": "0.5772151649019495269398456817487\nTime: CPU 19.95 s, Wall: 19.96 s"}︡
︠0e669baa-f7aa-4f5e-a4d0-6959d9368134i︠
%html
<p>Con el tercer m&eacute;todo se recuperan $5$ cifras correctas pero tarda mas de $20$ vveces m&aacute;s que el primero. <span style="color: #ff0000;">CONCLUSIONES:</span></p>
<ol>
<li>Es bastante claro que el primer m&eacute;todo es mejor que el segundo y &eacute;ste mejor que el tercero. &iquest;Por qu&eacute;?</li>
<li><span style="color: #ff0000;">Debemos contar</span> el n&uacute;mero de operaciones que se hacen al aplicar cada uno de los m&eacute;todos: En el primero calculamos $n$ sumas y un logaritmo, en el segundo calculamos $n$ divisiones y $n$ sumas, y en el tercero $n$ divisiones, $n$ logaritmos y $n$ sumas. </li>
</ol>

<h4>Ejercicio 3</h4>
<p>(2 puntos) Se define la funci&oacute;n $\sigma(n)$ como la suma de todos los divisores positivos del entero positivo $n$. Sage dispone de la funci&oacute;n $sigma$ que realiza este c&aacute;lculo. <span style="color: #ff0000;">Determina</span> (experimentalmente) el mayor entero positivo tal que la diferencia</p>
<p>\[e^\gamma\cdot n \cdot log(log(n))-\sigma(n),\]</p>
<p>es negativa ($\gamma$ es la constante de Euler).</p>

︡fea0fc76-d4a7-468e-9a6e-6727b341505b︡{"html": "<p>Con el tercer m&eacute;todo se recuperan $5$ cifras correctas pero tarda mas de $20$ vveces m&aacute;s que el primero. <span style=\"color: #ff0000;\">CONCLUSIONES:</span></p>\r\n<ol>\r\n<li>Es bastante claro que el primer m&eacute;todo es mejor que el segundo y &eacute;ste mejor que el tercero. &iquest;Por qu&eacute;?</li>\r\n<li><span style=\"color: #ff0000;\">Debemos contar</span> el n&uacute;mero de operaciones que se hacen al aplicar cada uno de los m&eacute;todos: En el primero calculamos $n$ sumas y un logaritmo, en el segundo calculamos $n$ divisiones y $n$ sumas, y en el tercero $n$ divisiones, $n$ logaritmos y $n$ sumas. </li>\r\n</ol>\r\n\r\n<h4>Ejercicio 3</h4>\r\n<p>(2 puntos) Se define la funci&oacute;n $\\sigma(n)$ como la suma de todos los divisores positivos del entero positivo $n$. Sage dispone de la funci&oacute;n $sigma$ que realiza este c&aacute;lculo. <span style=\"color: #ff0000;\">Determina</span> (experimentalmente) el mayor entero positivo tal que la diferencia</p>\r\n<p>\\[e^\\gamma\\cdot n \\cdot log(log(n))-\\sigma(n),\\]</p>\r\n<p>es negativa ($\\gamma$ es la constante de Euler).</p>"}︡
︠d8b13e40-a224-4f7e-9430-8432f4cbd6be︠
def FF(n,nbits):
    R = RealField(prec=nbits)
    return exp(R(euler_gamma))*n*R(log(log(n)))-sigma(n)
︡159962f1-f1cf-47d4-b5ef-d394b5f37da4︡︡
︠795cd683-0990-4b08-9795-e77961004f8e︠
def mayor(N,nbits):
    max = 1
    for n in xsrange(1,N):
        if FF(n,nbits)<0.0:
            max = n
    return max
︡557c35eb-adeb-446d-b502-7bcdc6353b89︡︡
︠e646d8c6-acb0-4707-b7b6-8df6d68d60a3︠
time mayor(10^3,53)
︡1304c3e0-da73-40d0-8f57-821e2d06e5c6︡{"stdout": "840\nTime: CPU 0.22 s, Wall: 0.22 s"}︡
︠890cc295-9a1f-4bf3-b110-246529ff2c28︠
time mayor(10^4,53)
︡41864d3b-2190-4b45-a7a9-b01c819b07a5︡{"stdout": "5040\nTime: CPU 2.20 s, Wall: 2.20 s"}︡
︠093e7de2-322b-475e-953b-d0db65385507︠
time mayor(10^5,53)
︡a34fa188-906f-4561-89e2-ee7043fa2b8b︡{"stdout": "5040\nTime: CPU 21.52 s, Wall: 21.53 s"}︡
︠ba314b98-3091-4781-a7ff-f6f6965bb6aai︠
%html
<p><span style="color: #ff0000;">Vemos que el entero buscado podr&iacute;a ser $5040$</span> ya que no hay ninguno con $FF(n,53)$ negativo entre $5041$ y $10^5$. Si quisi&eacute;ramos comprobar hasta $10^6$ debemos esperar que tarde del orden de $200$ segundos, que no es demasiado. La precisi&oacute;n no parece ser importante en este problema, por lo que usamos la est&aacute;ndar de $53$ bits.</p>

︡c767584d-7241-411b-a98d-564762f924ea︡{"html": "<p><span style=\"color: #ff0000;\">Vemos que el entero buscado podr&iacute;a ser $5040$</span> ya que no hay ninguno con $FF(n,53)$ negativo entre $5041$ y $10^5$. Si quisi&eacute;ramos comprobar hasta $10^6$ debemos esperar que tarde del orden de $200$ segundos, que no es demasiado. La precisi&oacute;n no parece ser importante en este problema, por lo que usamos la est&aacute;ndar de $53$ bits.</p>"}︡
︠48e53dbd-0f8b-4d98-bcca-74dcbadb2447︠
time mayor(10^6,53)
︡26239bab-7bcf-4f77-80c3-998876d64d56︡{"stdout": "5040\nTime: CPU 132.51 s, Wall: 132.60 s"}︡
︠8f4c3eef-7756-499d-82c6-b9b7f5399d66i︠
%html
<p>El comportamiento de la funci&oacute;n $FF(n,nbits)$ debe ser bastante err&aacute;tico ya que $\sigma(n)$ vale s&oacute;lo $1+n$ si n es primo, y, en cambio es mucho m&aacute;s&nbsp; grande que $n$ si $n$ tiene muchos factores&nbsp; primos elevados a exponentes grandes. Podemos obtener una idea del aspecto de la funci&oacute;n mediante una gr&aacute;fica.&nbsp;</p>

︡2fba6158-d8aa-4b86-8adb-c7fc0de4299e︡{"html": "<p>El comportamiento de la funci&oacute;n $FF(n,nbits)$ debe ser bastante err&aacute;tico ya que $\\sigma(n)$ vale s&oacute;lo $1+n$ si n es primo, y, en cambio es mucho m&aacute;s&nbsp; grande que $n$ si $n$ tiene muchos factores&nbsp; primos elevados a exponentes grandes. Podemos obtener una idea del aspecto de la funci&oacute;n mediante una gr&aacute;fica.&nbsp;</p>"}︡
︠02169f36-4e60-45ec-bce4-cc76d952e321︠
L = [(n,FF(n,53)) for n in srange(2,10^4)]
︡0bdbd25d-2dda-423b-a500-8522ba6cd0e0︡︡
︠e5bb558a-6740-47e6-967e-b6634d72f5ac︠
points(L,pointsize=3)
︡8a5baaed-f87c-466f-8973-c660d821bc25︡︡
︠db9351cf-b4c3-4315-8856-5f220bdcf316i︠
%html
<p>En el gr&aacute;fico se ven algunos de los valores negativos de $FF(n,nbits)$, y, en particular que debe haber uno hacia el $2500$ y otro, el mayor, alrededor del $5000$.&nbsp; No se sabe si es cierto que $5040$ es el mayor entero tal que $FF(n,nbits)$ es negativo, pero esa afirmaci&oacute;n se ha demostrado que es equivalente a la "hip&oacute;tesis de Riemann", que se considera un&aacute;nimemente como el problema (actualmente)&nbsp; abierto m&aacute;s importante de las Matem&aacute;ticas. </p>

<h4>Ejercicio 4</h4>
<p>Definimos una sucesi&oacute;n de n&uacute;meros racionales mediante</p>
<p>\[G_1=0,\ G_2=1,\ G_n=G_{n-1}+\frac{1}{n-2}G_{n-2} \ (n\ge 3).\]</p>
<ol>
<li><span style="color: #ff0000;">(1 punto) Comprueba</span> (experimentalmente)&nbsp; que la fracci&oacute;n $\frac{n}{G_n}$ tiende al n&uacute;mero $e$.</li>
<li><span style="color: #ff0000;">(1 punto) Compara</span> la eficiencia de esta manera de aproximar $e$&nbsp; con la de la forma,&nbsp; m&aacute;s conocida,&nbsp; que utiliza la serie \[e=\sum_{n=0}^{n=\infty}\frac{1}{n!}.\]</li>
</ol>

<p>Programamos la recursi&oacute;n iterativamente, de forma similar a lo que hicimos para la sucesi&oacute;n de Fibonacci.</p>

︡4f62c76c-871e-400f-a62d-aa77e16762a2︡{"html": "<p>En el gr&aacute;fico se ven algunos de los valores negativos de $FF(n,nbits)$, y, en particular que debe haber uno hacia el $2500$ y otro, el mayor, alrededor del $5000$.&nbsp; No se sabe si es cierto que $5040$ es el mayor entero tal que $FF(n,nbits)$ es negativo, pero esa afirmaci&oacute;n se ha demostrado que es equivalente a la \"hip&oacute;tesis de Riemann\", que se considera un&aacute;nimemente como el problema (actualmente)&nbsp; abierto m&aacute;s importante de las Matem&aacute;ticas. </p>\r\n\r\n<h4>Ejercicio 4</h4>\r\n<p>Definimos una sucesi&oacute;n de n&uacute;meros racionales mediante</p>\r\n<p>\\[G_1=0,\\ G_2=1,\\ G_n=G_{n-1}+\\frac{1}{n-2}G_{n-2} \\ (n\\ge 3).\\]</p>\r\n<ol>\r\n<li><span style=\"color: #ff0000;\">(1 punto) Comprueba</span> (experimentalmente)&nbsp; que la fracci&oacute;n $\\frac{n}{G_n}$ tiende al n&uacute;mero $e$.</li>\r\n<li><span style=\"color: #ff0000;\">(1 punto) Compara</span> la eficiencia de esta manera de aproximar $e$&nbsp; con la de la forma,&nbsp; m&aacute;s conocida,&nbsp; que utiliza la serie \\[e=\\sum_{n=0}^{n=\\infty}\\frac{1}{n!}.\\]</li>\r\n</ol>\r\n\r\n<p>Programamos la recursi&oacute;n iterativamente, de forma similar a lo que hicimos para la sucesi&oacute;n de Fibonacci.</p>"}︡
︠15e0c5d5-2c0a-4cdc-9c3c-97ad82725884︠
def G(n):
    a,b = 0,1
    for j in xsrange(3,n):
        b,a = b+(a/(j-2)),b
    return b
︡7abd199d-60ac-4cef-a3fe-3c7c5559e993︡︡
︠02539f3e-0747-4c39-9db1-043d8bb82a5e︠
x = G(1000);RR(1000/x);RR(e)
︡639a993a-62e5-45ae-ad72-22bc27289e0f︡{"stdout": "2.72100283129034\n2.71828182845905"}︡
︠02b4b713-e150-49c9-9653-6ec72ad143a1i︠
%html
<p>Ahora efectuamos el c&aacute;llculo mediante un bucle $while$ hasta alcanzar un n&uacute;mero prefijado de cifras decimales correctas.</p>

︡4dbbf4d8-3ddd-4a7e-b9bd-d45c7f359aec︡{"html": "<p>Ahora efectuamos el c&aacute;llculo mediante un bucle $while$ hasta alcanzar un n&uacute;mero prefijado de cifras decimales correctas.</p>"}︡
︠3086e94f-7555-48dd-bbf3-f0cdbb9dbbd1︠
def E(n,nbits):
    R = RealField(prec=nbits)
    a,b,k = R(0),R(1),3
    while abs(R(k/b)-R(e))>R(10^(-n)):
        b,a = R(b)+R(a/(k-2)),b
        k += 1
        #if k%10000 == 0:
        #    print "otros 10000"  ##,k,abs(R(k/b)-R(e))
    return R(k/b),R(k/b)-R(e),k
︡8138c118-7943-4f34-8522-9e05a5b8d2ae︡︡
︠f22d3937-4ed5-49d3-ba2d-fffd6d3f370c︠
time E(3,53)
︡f0123020-aa33-4a30-b8a6-c18f33e95f64︡{"stdout": "(2.71928156432821, 0.000999735869168905, 2720)\nTime: CPU 0.02 s, Wall: 0.02 s"}︡
︠f2446941-a1cc-45a5-8dc7-afafd9f9ceb5︠
time E(6,53)
︡4256c864-abbb-4720-923b-a0ce0a0cd2b6︡{"stdout": "(2.71828282845870, 9.99999657302908e-7, 2718652)\nTime: CPU 15.68 s, Wall: 15.69 s"}︡
︠161c17e6-0e77-4aec-9cc3-21d26dee5fa1i︠
%html
<p>No intento calcular m&aacute;s cifras correctas de $e$ mediante este m&eacute;todo: al pasar de $3$ cifras a $6$ se multiplica por $1000$ el sub&iacute;ndice $n$ de la sucesi&oacute;n y por $800$ el tiempo de c&aacute;lculo. &nbsp; Comparo con la serie:</p>

︡64d9658e-d984-41e7-b83d-1ffaf6294c1e︡{"html": "<p>No intento calcular m&aacute;s cifras correctas de $e$ mediante este m&eacute;todo: al pasar de $3$ cifras a $6$ se multiplica por $1000$ el sub&iacute;ndice $n$ de la sucesi&oacute;n y por $800$ el tiempo de c&aacute;lculo. &nbsp; Comparo con la serie:</p>"}︡
︠cc604535-202a-4a10-99cf-1557382f97f8︠
def Eserie(n,nbits):
    R = RealField(prec=nbits)
    S,k =R(2),1
    while abs(R(S)-R(e))>R(10^(-n)):
        k += 1
        S += R(1/factorial(k))
    return R(S),R(S)-R(e),k
︡20d41176-3ccd-4326-bf13-e9c31fba781a︡︡
︠93e2eab3-0e30-45c7-ab3e-1802a14bc04d︠
time Eserie(6,53)
︡c90d67db-fb94-4e93-8586-3ec4a789267a︡{"stdout": "(2.71828152557319, -3.02885852843104e-7, 9)\nTime: CPU 0.00 s, Wall: 0.00 s"}︡
︠43954013-3602-4b33-89f3-b4d27f087b0b︠
time Eserie(12,53)
︡99ff1df0-4c55-48f1-8041-f43c5299b8c5︡{"stdout": "(2.71828182845823, -8.14903700074865e-13, 14)\nTime: CPU 0.00 s, Wall: 0.00 s"}︡
︠8f08031b-3a71-457f-98e7-61ba7f6355eb︠
time Eserie(24,53)
︡0fbd912f-5670-4b9c-836d-69e6ca50d0f0︡{"stdout": "^C"}︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_17.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"dGltZSBFc2VyaWUoMjQsNTMp\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmp1B1Vlg/___code___.py\", line 3, in <module>\n    exec compile(u'__time__=misc.cputime(); __wall__=misc.walltime(); Eserie(_sage_const_24 ,_sage_const_53 ); print \"Time: CPU %.2f s, Wall: %.2f s\"%(misc.cputime(__time__), misc.walltime(__wall__))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmpf6N5Lt/___code___.py\", line 8, in Eserie\n    S += R(_sage_const_1 /factorial(k))\n  File \"sage/symbolic/function.pyx\", line 847, in sage.symbolic.function.GinacFunction.__call__ (build/cythonized/sage/symbolic/function.cpp:9392)\n  File \"sage/symbolic/function.pyx\", line 985, in sage.symbolic.function.BuiltinFunction.__call__ (build/cythonized/sage/symbolic/function.cpp:10676)\n  File \"sage/rings/integer.pyx\", line 3920, in sage.rings.integer.Integer.factorial (build/cythonized/sage/rings/integer.c:24511)\n  File \"sage/ext/interrupt.pyx\", line 71, in sage.ext.interrupt.sig_raise_exception (build/cythonized/sage/ext/interrupt.c:808)\nKeyboardInterrupt\n__SAGE__"}︡
︠f55244a1-1576-4515-9b54-a73ca9521f26︠
time Eserie(24,106)
︡579c529d-7531-4f1b-99bd-56feef86ef67︡{"stdout": "(2.718281828459045235360287404308, -6.704430225860226707718604610268e-26, 24)\nTime: CPU 0.00 s, Wall: 0.00 s"}︡
︠4c03f86f-563e-46ba-a549-e2d878026a3ei︠
%html
<p>No podemos calcular $24$ cifras de $e$ usando $53$bits de precisi&oacute;n, y el bucle en el primer caso es infinito. Doblando la precisi&oacute;n obtenemos m&aacute;s de $4\times 24=96$ bits d eprecisi&oacute;n, y el c&aacute;lculo se realiza en menos de cent&eacute;simas de segundo.&nbsp; Es claro que la serie es un m&eacute;todo mucho m&aacute;s eficiente, posiblemente debido a que</p>
<ol>
<li>Como $n!$ crece de forma tan bestial, los t&eacute;rminos que sumamos son en seguida irrelevantes para alcanzar la precisi&oacute;n deseada.</li>
<li>Sage dispone de un m&eacute;todo muy eficiente para calcular factoriales, de forma que algo que, en principio,&nbsp; suena improbable, que se pueda calcular r&aacute;pido el factorial de un n&uacute;mero grande, de hecho es cierto.</li>
</ol>
<p>Las celdas que siguen calculan el n&uacute;mero de cifras decimales de factoriales grandes y el tiempo de c&aacute;lculo.</p>

︡ccb30815-4290-4c21-bfab-f4b5de53ae19︡{"html": "<p>No podemos calcular $24$ cifras de $e$ usando $53$bits de precisi&oacute;n, y el bucle en el primer caso es infinito. Doblando la precisi&oacute;n obtenemos m&aacute;s de $4\\times 24=96$ bits d eprecisi&oacute;n, y el c&aacute;lculo se realiza en menos de cent&eacute;simas de segundo.&nbsp; Es claro que la serie es un m&eacute;todo mucho m&aacute;s eficiente, posiblemente debido a que</p>\r\n<ol>\r\n<li>Como $n!$ crece de forma tan bestial, los t&eacute;rminos que sumamos son en seguida irrelevantes para alcanzar la precisi&oacute;n deseada.</li>\r\n<li>Sage dispone de un m&eacute;todo muy eficiente para calcular factoriales, de forma que algo que, en principio,&nbsp; suena improbable, que se pueda calcular r&aacute;pido el factorial de un n&uacute;mero grande, de hecho es cierto.</li>\r\n</ol>\r\n<p>Las celdas que siguen calculan el n&uacute;mero de cifras decimales de factoriales grandes y el tiempo de c&aacute;lculo.</p>"}︡
︠041e3241-0575-4133-b094-3f3210cdd66e︠
time floor(log(factorial(1234567),base=10))
︡4f41a03d-8679-4efc-94ea-e3ba416629b7︡{"stdout": "6984220\nTime: CPU 0.24 s, Wall: 0.24 s"}︡
︠416cea3a-c560-4152-ab1a-61a846776f4a︠
time floor(log(factorial(12345678),base=10))
︡48f9db39-890b-4b2f-b57b-dbf7029626ed︡{"stdout": "82187904\nTime: CPU 3.96 s, Wall: 3.96 s"}︡
︠bacaff75-0843-4a3c-a3b4-517d88ba9a2c︠
time floor(log(factorial(123456789),base=10))
︡977ff9f7-d437-430f-a903-8638e9c9779e︡{"stdout": "945335859\nTime: CPU 96.49 s, Wall: 96.55 s"}︡









