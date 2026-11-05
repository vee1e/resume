// Pixel-positioned Typst port of Lakshit_Verma_Resume.tex.
// All y values are the text baselines measured from the original PDF.
// Fonts: Latin Modern (metric-identical to Computer Modern).

#set page(paper: "us-letter", margin: 0pt)
#set text(font: "CMR10", size: 10pt, hyphenate: false)
#show strong: it => text(font: "CMBX10", it)
#set par(justify: true, leading: 5.125pt)
#show link: it => text(fill: black, it)

#let BASE = 6.83pt

#let bl(y, body) = place(
  dx: 21.6pt,
  dy: y * 1pt - BASE,
  block(width: 568.8pt, body),
)

#let blw(y, w, body) = place(
  dx: 21.6pt,
  dy: y * 1pt - BASE,
  block(width: w, body),
)

#let blc(y, body) = place(
  dx: 22.05pt,
  dy: y * 1pt - BASE,
  block(width: 568.8pt, align(center, body)),
)

#let section(y, title) = {
  bl(y, text(font: "CMBX10", upper(title)))
  place(dx: 21.6pt, dy: y * 1pt + 4.185pt, line(length: 568.8pt, stroke: 0.398pt))
}

#let bullet(y, body) = place(
  dx: 21.6pt,
  dy: y * 1pt - BASE,
  block(width: 600pt, par(justify: false)[
    #h(1.661pt)-#h(5.021pt)#body
  ]),
)

#let achievement(y, body, date) = {
  place(dx: 21.6pt, dy: y * 1pt - BASE, block(width: 560pt, par(justify: false)[
    #h(1.661pt)-#h(5.021pt)#body
  ]))
  place(dx: 21.6pt, dy: y * 1pt - BASE, block(width: 568.8pt, align(right)[*#date*#h(-0.5pt)]))
}

// ---- Name and contact ----
#place(
  dx: 21.6pt,
  dy: 10.801pt,
  block(width: 568.8pt, align(center)[
    #text(font: "CMBX12", size: 20.6625pt, upper("Lakshit Verma"))
  ]),
)

#blc(39.008)[
  #link("tel:+918448058867")[+91 8448058867] #h(14.77pt)
  #link("mailto:vermalucky2004@gmail.com")[vermalucky2004\@gmail.com] #h(14.77pt)
  #link("https://github.com/vee1e")[github.com/vee1e] #h(14.77pt)
  #link("https://www.linkedin.com/in/lakshitverma/")[linkedin.com/in/lakshitverma]
]

// ---- Skills ----
#section(53.040, "Skills")
#bl(70.320)[
  *Languages:* Python, C, C++, Go, TypeScript, Rust, Bash Scripting \
  *Security:* Burp Suite, IDA Pro, Ghidra, Wireshark, GDB, Nmap, OWASP Top 10, MITRE ATT&CK \
  *Technologies:* Git, Docker, GitHub Actions, Vercel, Cloudflare Workers, Railway
]

// ---- Technical Experience ----
#section(112.163, "Technical Experience")

#bl(129.443, par(justify: false)[
  *Software Engineer* #h(1fr) May 2026 - August 2026 \
  Google Summer of Code (GSoC) under Mandiant #h(1fr) Remote#h(-0.5pt)
])
#bullet(156.342)[Extended the FLOSS malware string extraction framework with features derived from an experimental branch.]
#bullet(169.293)[Implemented a cross-platform PE/ELF/Mach-O executable parser for extracting binary metadata, sections and functions.]
#bullet(182.245)[Analyzed 150K+ malware samples to automate creating library string databases with CI/CD, slashing build times by 95\%.]
#bullet(195.196)[Shipped a graphical web interface to visualize the tool’s output reaching 100\% CLI feature parity.]

#bl(210.140, par(justify: false)[
  *Research Intern* #h(1fr) September 2025 - June 2026 \
  Schneider Electric and MAHE #h(1fr) Manipal, Karnataka, India#h(-0.5pt)
])
#bullet(237.039)[Built an AI AppSec platform with 329K+ CVEs and 3.3K+ attack chains, coupling SAST, binary analysis and exploit testing.]
#bullet(249.991)[Cut complex audits by 12x, automating ATT&CK #sym.arrow.r#h(-2.053pt) D3FEND correlation, SARIF export, and interactive threat graphs.]
#bullet(262.942)[Shipped a regex-based reviewer at 3000 files/sec with 1000+ rules, flagging 23+ CWE classes with no API cost.]
#bullet(275.893)[Automated binary analysis with a sandbox and Radare2, with a confirm-patch-verify loop for agent-suggested fixes.]

#bl(290.837, par(justify: false)[
  *Security Engineer Intern* #h(1fr) March 2026 - May 2026 \
  NoHack Labs #h(1fr) Remote#h(-0.5pt)
])
#bullet(317.736)[Identified 20+ vulnerabilities including 5 critical issues using AI-assisted SAST and manual verification in OpenClaw.]
#bullet(330.688)[Delivered detailed VAPT documentation for scanned applications with extensive remediation guides for faster issue resolution.]

#bl(345.632, par(justify: false)[
  *Software Engineer* #h(1fr) May 2025 - August 2025 \
  Code for GoodTech Dedicated Mentoring Program #h(1fr) Remote#h(-0.5pt)
])
#bullet(372.531)[Created a FastAPI backend to parse and bulk-upload XLSForm files for validation, management and deletion.]
#bullet(385.482)[Deployed a modular Angular frontend with inline errors, reducing file validation and remediation time by 4x.]
#bullet(398.434)[Implemented comprehensive testing for frontend and backend components, leading to code coverage of over 72\%.]

#bl(413.378, par(justify: false)[
  *Board Member and Forensics Subsystem Head* #h(1fr) Jan 2024 - Aug 2026 \
  Cryptonite - Academic Cybersecurity Team #h(1fr) On-Site#h(-0.5pt)
])
#bullet(440.277)[Competed in weekly international CTF competitions, maintaining the team’s top 3 national ranking for 2+ years.]
#bullet(453.228)[Planned, created and executed 10+ weeks of training material for junior team members spanning 2 domains.]
#bullet(466.180)[Authored 5+ security exercises for the team’s flagship, international-level CTF with 3,500+ participants.]

// ---- Achievements ----
#section(484.112, "Achievements")
#achievement(501.392)[1st Place, Smart India Hackathon 2024 held at IIT Jammu.][Dec 2024]
#achievement(513.347)[1st Place, ISEA-ISAP CTF hackathon held at IIT Madras.][Jan 2026]
#achievement(525.302)[1st Place, GIT x IITB CTF sponsored by IIT Bombay Trust Lab.][May 2025]
#achievement(537.257)[Awarded a Linux Foundation Training (LiFT) Scholarship, one of 500 recipients worldwide.][June 2026]

// ---- Projects ----
#section(552.201, "Projects")
#bl(570.034)[
  *Subidx #text(font: "SFRM1000")[|] #link("https://github.com/vee1e/subidx")[GitHub] #text(font: "SFRM1000")[|] #link("https://subidx.lverma.com")[Live]:* Go-based subdomain enumerator that tails Certificate Transparency logs, pins log keys, verifies Merkle inclusion proofs, and stores every hostname in Pebble with crash-safe watermarks. 50ms apex queries on 75K-record indexes, 113K+ hostnames from a 90-second live tail, served behind a rate-limited public search API.]
#bl(611.877)[
  *Supplicant #text(font: "SFRM1000")[|] #link("https://github.com/vee1e/supplicant")[GitHub]:* Python-based supply-chain security diff scanner. Compares each version bump to package’s own release history, flagging anything that breaks patterns, rebuilding deleted versions from CDN archives. Full security-scored cold diffs with live vulnerability checks run in #text(font: "SFRM1000")[<]2s.]
#bl(653.720)[
  *Naksheap #text(font: "SFRM1000")[|] #link("https://github.com/vee1e/naksheap")[GitHub]:* Rust heap parser for analysis of cross-platform crash dumps. Rebuilds the live heap of a stripped, optimized binary from its core dump, locating objects, allocations and pointers. Recovered 42,000 objects and 63,000 pointers from a 105 MB core dump in 0.4 seconds, over 100,000 objects per second.]
#bl(695.564)[
  *Agora #text(font: "SFRM1000")[|] #link("https://github.com/vee1e/agora")[GitHub]:* Multi-agent audit harness where 4 adversarial LLM agents (finder, killer, judge, exploit) debate findings on an append-only message board and prove survivors with sandboxed PoCs. A 50-minute run at 3M tokens yielded 35 candidates and 5 crashes, surfacing 2+ heap overflows and out-of-bounds stack writes.]

// ---- Education ----
#section(736.410, "Education")
#bl(753.690, par(justify: false)[
  *Manipal Institute of Technology, Manipal* #h(1fr) July 2023 - August 2027#h(-0.5pt) \
  B.Tech in Electronics Engineering, Minor in Computing
])
