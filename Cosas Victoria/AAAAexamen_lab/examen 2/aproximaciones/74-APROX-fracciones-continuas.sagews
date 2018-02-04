︠510fd999-1e05-4b75-93ad-ecb17eb5c646︠
def FContinuaF(n,m):
    l=[]
    while m>0:
        l.append(n//m)
        n,m=m,n%m
    return l
︡ec539a7c-812d-4371-8089-d95122bec6e6︡︡
︠79bdd94f-b20f-4c04-8e5a-d329782c30d2︠
FContinuaF(7,5)
︡67c7f6d6-0711-4ec3-85f0-d4b10bc236f6︡{"stdout": "[1, 2, 2]"}︡
︠95421f54-0b5e-4e53-b6ee-47f0c3fba0df︠
def FContinua(r,k):
    l=[]
    while len(l)<=k:
        l.append(floor(r))
        r=r-floor(r)
        if r==0:
            return l
        else:
            r=1/r
    return l
︡0cd7c55c-54b9-4a5f-83a1-a83a64977c73︡︡
︠6776f20b-cadd-40db-bb88-fecfd36ef22e︠
FContinua((1+sqrt(5))/2,30)
︡cc0c7f12-7b94-4858-b468-68b2774a9622︡{"stdout": "[1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1,\n 1]"}︡
︠02711ab2-6a84-4c5d-8b8d-1f3b1c7e22b8︠
FContinua(sqrt(7),20)
︡97e41ff5-a436-4299-b4b5-93e65e888964︡{"stdout": "[2, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 4]"}︡
︠7071cf5a-b420-46fd-8234-b534dbea90d4︠
FContinua(sqrt(7),200)
︡a9d069eb-c939-4e48-aa33-8e61d0ad696e︡{"stderr": "Traceback (most recent call last):\n  File \"<stdin>\", line 1, in <module>\n  File \"_sage_input_19.py\", line 10, in <module>\n    exec compile(u'open(\"___code___.py\",\"w\").write(\"# -*- coding: utf-8 -*-\\\\n\" + _support_.preparse_worksheet_cell(base64.b64decode(\"RkNvbnRpbnVhKHNxcnQoNyksMjAwKQ==\"),globals())+\"\\\\n\"); execfile(os.path.abspath(\"___code___.py\"))' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmp_cKuEg/___code___.py\", line 3, in <module>\n    exec compile(u'FContinua(sqrt(_sage_const_7 ),_sage_const_200 )' + '\\n', '', 'single')\n  File \"\", line 1, in <module>\n    \n  File \"/tmp/tmp9fNp2B/___code___.py\", line 6, in FContinua\n    l.append(floor(r))\n  File \"/home/sageserver/sage/local/lib/python2.7/site-packages/sage/functions/other.py\", line 598, in __call__\n    upper_floor = x_interval.upper().floor()\n  File \"sage/rings/real_mpfr.pyx\", line 2742, in sage.rings.real_mpfr.RealNumber.floor (/mnt/highperf/buildbot/slave/sage_git/build/src/build/cythonized/sage/rings/real_mpfr.c:19734)\nValueError: Calling floor() on infinity or NaN"}︡
︠da6f8389-5e57-4a86-a353-4810ef64ecd5︠
FContinua(sqrt(7).n(digits=200),400)
︡5a3cdc5b-fccf-46bb-9f40-d3a9eb3944cd︡{"stdout": "WARNING: Output truncated!"}︡{"html": "<a target='_new' href='/home/sagenb/71/cells/2/full_output.txt' class='file_link'>full_output.txt</a>"}︡{"stdout": "[2,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n\n...\n\n 14,\n 3,\n 6,\n 2,\n 2,\n 2,\n 2,\n 5,\n 9,\n 10,\n 1,\n 1,\n 1,\n 5,\n 11,\n 5,\n 3,\n 1,\n 17,\n 3,\n 35,\n 4,\n 1,\n 13,\n 1,\n 66,\n 1,\n 1,\n 1,\n 1,\n 2,\n 1,\n 1,\n 1,\n 2,\n 5,\n 62,\n 1,\n 4,\n 10,\n 3,\n 127,\n 2,\n 2,\n 7,\n 3,\n 2,\n 1,\n 1,\n 2,\n 2,\n 23,\n 1,\n 3,\n 1,\n 29,\n 7,\n 10,\n 1,\n 2]"}︡
︠7b3e8582-b1c9-422e-a796-0ac05fe446a8︠
FContinua(sqrt(7).n(digits=1000),400)
︡7890980e-5bcd-4920-8bdf-717912222936︡{"stdout": "WARNING: Output truncated!"}︡{"html": "<a target='_new' href='/home/sagenb/71/cells/3/full_output.txt' class='file_link'>full_output.txt</a>"}︡{"stdout": "[2,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n\n...\n\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4,\n 1,\n 1,\n 1,\n 4]"}︡
︠aef328b7-ebbd-4a12-a79c-d9f93fa81b46︠
FContinua((2**(1/3)).n(digits=1000),400)
︡1b8feec4-4e85-4e50-9d65-76d31959bb40︡{"stdout": "WARNING: Output truncated!"}︡{"html": "<a target='_new' href='/home/sagenb/71/cells/6/full_output.txt' class='file_link'>full_output.txt</a>"}︡{"stdout": "[1,\n 3,\n 1,\n 5,\n 1,\n 1,\n 4,\n 1,\n 1,\n 8,\n 1,\n 14,\n 1,\n 10,\n 2,\n 1,\n 4,\n 12,\n 2,\n 3,\n 2,\n 1,\n 3,\n 4,\n 1,\n 1,\n 2,\n 14,\n 3,\n 12,\n 1,\n 15,\n 3,\n 1,\n 4,\n 534,\n 1,\n 1,\n 5,\n 1,\n 1,\n 121,\n 1,\n 2,\n 2,\n 4,\n 10,\n 3,\n 2,\n 2,\n 41,\n 1,\n 1,\n 1,\n 3,\n 7,\n 2,\n 2,\n 9,\n\n...\n\n 1,\n 1,\n 5,\n 1,\n 2,\n 10,\n 1,\n 5,\n 4,\n 1,\n 1,\n 4,\n 1,\n 2,\n 1,\n 1,\n 2,\n 12,\n 2,\n 1,\n 8,\n 3,\n 2,\n 6,\n 1,\n 3,\n 10,\n 1,\n 2,\n 20,\n 1,\n 6,\n 1,\n 2,\n 186,\n 2,\n 2,\n 1,\n 2,\n 47,\n 1,\n 19,\n 2,\n 2,\n 1,\n 1,\n 1,\n 2,\n 1,\n 1,\n 3,\n 2,\n 8,\n 1,\n 18,\n 3,\n 5,\n 39,\n 1,\n 2]"}︡









