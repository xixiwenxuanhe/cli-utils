## `clear_cursor_login`

清除 Cursor 编辑器的登录信息，不影响插件和配置。

---

### Windows

```powershell
powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/xixiwenxuanhe/cli-utils/main/clear_cursor_login.bat -OutFile temp.bat; .\temp.bat; Remove-Item temp.bat"
```

---

### Linux / macOS

```bash
curl -s https://raw.githubusercontent.com/xixiwenxuanhe/cli-utils/main/clear_cursor_login.sh | bash
```

