1. Add this to `/usr/share/X11/xkb/symbols/us`

```
partial alphanumeric_keys
xkb_symbols "us_rs_sp" {

    include "us(basic)"
    name[Group1]= "English (RS, SP)";

    key <AE01>  {[  1,          exclam,     U00A1,      U00A1   ]};
    
    key <AD03>  {[  e,          E,          U00E9,      U00C9   ]};
    key <AD07>  {[  u,          U,          U00FA,      U00DA   ]};
    key <AD08>  {[  i,          I,          U00ED,      U00CD   ]};
    key <AD09>  {[  o,          O,          U00F3,      U00D3   ]};
    
    key <AC01>  {[  a,          A,          U00E1,      U00C1   ]};
    key <AC02>  {[  s,          S,          U0161,      U0160   ]};
    key <AC03>  {[  d,          D,          U0111,      U0110   ]};
    key <AC07>  {[  j,          J,          U00FC,      U00DC   ]};

    key <AB01>  {[  z,          Z,          U017E,      U017D   ]};
    key <AB02>  {[  x,          X,          U010D,      U010C   ]};
    key <AB03>  {[  c,          C,          U0107,      U0106   ]};
    key <AB06>	{[  n,          N,          U00F1,      U00D1   ]};
    key <AB10>	{[  slash,      question,   U00BF,      U00BF   ]};

    key <LSGT>  {[  backslash,  bar,       backslash,   bar     ]};

    include "level3(ralt_switch)"
};
```


2. Add to `/usr/share/X11/xkb/rules/evdev.xml` after any other variant (intl for example)

```
        <variant>
          <configItem>
            <name>us_rs_sp</name>
            <description>English (RS, SP)</description>
          </configItem>
        </variant>
```

3. Add to `/usr/share/X11/xkb/rules/evdev.lst` after any other variant (intl for example)

```
  rs              us_rs_sp: English (RS, SP)
```

4. Reboot
5. Select keyboard in settings
