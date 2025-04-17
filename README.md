# szndetect
Script that detects cheat events using QBCore.Functions.GetPlayer
# 🛡️ QBCore Advanced AntiCheat - Susano Edition

Welcome to the **QBCore Advanced AntiCheat** designed to detect and block **Susano** and other modern FiveM cheat menus. This system is built to integrate seamlessly with QBCore and provides strong runtime + file-based detection techniques.

![AntiCheat Banner](https://i.imgur.com/wE1GdRG.png)

---

## ✨ Features

✅ **Memory Signature Scanner**  
✅ **YARA-Inspired File/Memory Detection**  
✅ **Blacklisted Lua Function Hooking**  
✅ **Net Event Spoofing & Unknown Trigger Detection**  
✅ **Mass Entity Spawn Protection (Vehicle/Object Spam)**  
✅ **Noclip & Keybind Pattern Detection**  
✅ **Discord Logging with Styled Embeds**  
✅ **Screenshot Support with [screenshot-basic](https://github.com/citizenfx/screenshot-basic)**  
✅ **Customizable Configuration (Triggers, Exports, Limits)**  

---

## 🧠 YARA-style Detection (Based on Susano)

Integrated deep memory scanning for known cheat strings such as:

```lua
"Loader.exe"
"curl_easy_header"
"curl_url_get"
"BRRz^{+"
"F:\\pwTk"
"0m0.egO"
"curl_url_strerror"
...

⚙️ Installation
🔽 Download the release

📁 Extract to your resources folder:

bash
Copy
Edit
/qb-anticheat
🧩 Add to your server.cfg:

cfg
Copy
Edit
ensure qb-anticheat
🔗 Set your Discord Webhook inside config.lua:

lua
Copy
Edit
Config.WebhookURL = 'https://discord.com/api/webhooks/your_webhook_here'
✅ Start your server and stay protected.

📸 Screenshot Logging (Optional)
Install screenshot-basic and enable it in your server.cfg:

ensure screenshot-basic
Set Config.EnableScreenshot = true in config.lua.

🚨 Detection Examples
Unauthorized loadstring() use

Attempted mass spawning of vehicles

Net event spoofing (e.g. illegal:spawnCar)

Memory trace of Susano, curl_*, and other embedded artifacts

🛠️ Future Additions (Coming Soon)
🔄 Ban list integration with database

🧪 Offline crash dump analyzer (AI-assisted)

🌐 Web dashboard for live cheat log viewing

✉️ Email/Discord DMs to admins on detection

💬 Support & Contributions
Found a bug or have a suggestion?
Feel free to open an Issue or submit a Pull Request!

🧑‍💻 Credits
Made with 💖 by Drizzly & the community.
Inspired by the fight against modern cheat frameworks like Susano.

📜 License
This project is open-source under the MIT License.

