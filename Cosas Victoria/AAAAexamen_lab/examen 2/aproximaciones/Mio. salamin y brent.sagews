︠177ece73-0a8a-4e53-bbd9-02e1d73b7309i︠
%html
<p>Algoritmo de Salamin y Brent, Pi</p>

︡f60bcbd7-b47f-43ad-a9ef-ccedb09b2adc︡{"html": "<p>Algoritmo de Salamin y Brent, Pi</p>"}︡
︠2e747ed3-5fca-4c75-afb5-45805e5dc959︠
def salamin_brentO1(d):
    a,b,s=1,1/2* sqrt(2),1/2
    for j in srange(d):
        a_orig=a
        a=(1/2)*(a+b)
        b=sqrt(a_orig*b)
        c=a**2-b**2
        s=s-(2**j)*c
        p=(2*a**2)/s
    return p
︡4f3e7201-76bb-4c76-902c-829e4c408dbe︡︡
︠ae280743-43f1-4bb6-9ce2-1219bfd04fa3︠
n(salamin_brentO1 (4))
︡c0bab828-38f0-45cb-89ad-7dceee348d35︡{"stdout": "3.00025111229393"}︡
︠ab1c8bde-0fca-4cf0-b659-a2fbcb741503︠
n(salamin_brentO1 (6))
︡30e3d001-fc94-4764-9e3e-b12748c224de︡{"stdout": "3.00025111229392"}︡
︠5f75aaf4-8db2-4e7c-8ce6-f04649a1b7b5︠
n(salamin_brentO1 (10))
︡50c70ad9-6a1f-49e7-9d89-f742afbdf3fc︡{"stdout": "3.00025111229417"}︡









