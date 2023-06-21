# ACT Fibernet Vulnerability Disclosure

Disclosing a misconfiguration in the ACT's intranet of customers. Compiled PDF hosted
[here](https://files.sujal.dev/act-intranet-report.pdf).

[![report-preview](https://files.sujal.dev/act/preview.png)](https://files.sujal.dev/act/report.pdf)

## Current status

While I haven't received any updates officially from ACT Fibernet, the issues seems to be fixed.

> **Note** It is possible that the issue only seems fixed to me because ACT has put me in a different network since
> I've upgraded to a static public IP plan. However, I still do get a private IP behind a CGNAT (to not make it too
> easy for websites to track me) by creating another WAN interface in opnsense called WAN_DHCP which requests an IP over
> DHCP, unlike the WAN_PPPoE interface which requests it over PPPoE and gets the public static IP. All server traffic is
> routed through the PPPoE interface and all other traffic is routed through the DHCP interface. I've been wondering if
> I could use both to double the bandwidth!?

I'm guessing they implemented a firewall rule to silently drop packets originating from an intranet address destined
to an intranet address, except for the gateway. Running nmap now doesn't seem to be able to discover any devices.

> Fun fact: I think ACT might be using Huawei network hardware!

## License

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons
Attribution-ShareAlike 4.0 International License</a>.
