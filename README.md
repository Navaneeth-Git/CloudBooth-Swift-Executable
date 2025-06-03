# FileBooth – Swift Executable

This is the **Swift executable version** of the [CloudBooth](https://github.com/Navaneeth-Git/CloudBooth) app — a lightweight macOS utility that syncs your Photo Booth photos to iCloud Drive.

> 💡 If you want the full-featured macOS menu bar app version, visit the main repository here:  
> 👉 [CloudBooth on GitHub](https://github.com/Navaneeth-Git/CloudBooth)

---

## 🧱 What This Is

This version contains a precompiled Swift command-line executable that mirrors the core syncing functionality of CloudBooth:

- Copies photos and videos from your **Photo Booth Library**
- Uploads them into a `photobooth` folder in **iCloud Drive**
- Skips duplicates for efficient syncing

This is ideal for advanced users who prefer CLI utilities or automation.

---

## 📂 File Paths Used

- **Source Folder**  
  `/Users/[username]/Pictures/Photo Booth Library/Pictures`

- **Destination Folder**  
  `/Users/[username]/Library/Mobile Documents/com~apple~CloudDocs/photobooth`

---

## ⚙️ Requirements

- macOS 13.0 or later
- iCloud Drive enabled
- Terminal permission to access the required folders

---

## 🚀 How to Run

After downloading and extracting:

```bash
chmod +x FileBooth
./FileBooth
```

You’ll be prompted to grant permission to access the Photos and iCloud Drive folders during first use.

---

## 🔐 Permissions

This app **never uploads your files to any third-party services**.  
It simply **copies your Photo Booth content from your local library to your iCloud Drive**.

---

## 📜 License

This project is licensed under the [Apache License 2.0](LICENSE).

---

© 2025 Navaneeth
