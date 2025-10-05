## Vulernability Remediation:

### Vulnerability 1:
1. Which package or library are you addressing?  
   **Pillow** (Python imaging library)

2. Which CVE is linked to this vulnerability?  
   **CVE-2023-50447**

3. What remediation steps do you suggest?  
   - Upgrade Pillow to **10.2.0 or later**.  
   - Avoid using `PIL.ImageMath.eval` with untrusted input.  
   - Rebuild the Docker image and re-run scans to confirm remediation.

---

### Vulnerability 2:
1. Which vulnerability are you addressing?  
   **PyYAML** (YAML parser for Python)

2. Which CVE is linked to this vulnerability?  
   **CVE-2020-1747**

3. What remediation steps do you suggest?  
   - Upgrade PyYAML to **5.3.1 or later**.  
   - Replace `yaml.full_load` / `FullLoader` on untrusted input with `yaml.safe_load`.  
   - Rebuild the Docker image and re-run scans to confirm the CVE no longer appears.
