# ACT Fibernet Vulnerability Disclosure

Disclosing a misconfiguration in ACT's intranet of customers. Compiled PDF hosted
[here](https://pdf.sujal.dev/act/report.pdf).

[![report-preview](https://pdf.sujal.dev/act/preview-1.png)](https://pdf.sujal.dev/act/report.pdf)

## Current status

While I haven't received any updates officially from ACT Fibernet, the issue seems to be fixed.

> **Note** It is possible that the issue only seems fixed to me because ACT Fibernet has put me in a different network
> since I've upgraded to a static public IP plan. However, I still do get a private IP behind a CGNAT (to not make it
> too easy for websites to track me) by creating another WAN interface in opnsense called WAN_DHCP which requests an IP
> over DHCP, unlike the WAN_PPPoE interface which requests it over PPPoE and gets the public static IP. All server
> traffic is routed through the PPPoE interface, and all other traffic is routed through the DHCP interface. I've been
> wondering if I could use both to double the bandwidth!?

I'm guessing they implemented a firewall rule to silently drop packets originating from an intranet address destined
to an intranet address, except for the gateway. Running nmap now doesn't seem to be able to discover any devices.

> Fun fact: I think ACT might be using Huawei network hardware!

## Build

You have to add the `-shell-escape` flag for minted to work:

> `minted` requires that LaTeX run with the `-shell-escape` flag. This has security implications; it allows LaTeX to run
> external programs, **-shell-escape should only be used with documents that you trust.**

## Credits

Thanks to [Karan Saini](https://github.com/qurbat) who suggested
[these](https://github.com/sujaldev/ACT-intranet-report/compare/54042db4c1a7b1638669d880b0898d31cafcd39e...e04b561b913d305b231c68b5f6747e2299975b0c)
changes.

## License

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons
Attribution-ShareAlike 4.0 International License</a>.
