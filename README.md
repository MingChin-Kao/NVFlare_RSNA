# NVFlare_RSNA

- 請下載此 repo，使用終端機開啟，並進入您學校的資料夾中。

	```bash
	cd NVFlare_RSNA/ncyu
	cd NVFlare_RSNA/ntunhs-1
    cd NVFlare_RSNA/ntunhs-2
	```

- 資料夾中總共會有三個檔案分別為
    - install.sh: 環境設定與建置(只須執行一次)
    - start_fl.sh : 啟動 Federated Learning
    - stop_fl.sh : 關閉 Federated Leaning
- 初次請先執行 install.sh，等待相關套件和環境建置完畢。
    
    ```bash
    bash install.sh
    ```
    - 執行前可能會需要您輸入您的使用者密碼
      ![image](https://github.com/MingChin-Kao/NVFlare_RSNA/blob/main/screenshot/need_pwd.png)
    
- 若要開始 Federated Learning，則執行以下指令。
    
    ```bash
    bash start_fl.sh
    ```
    
    - 成功連線截圖
      ![image](https://github.com/MingChin-Kao/NVFlare_RSNA/blob/main/screenshot/connect_success.png)
        
    - 如果測試連線成功，請寄送郵件通知我們，我們的信箱地址如下。若在測試過程中遇到任何問題，請附上截圖一併回報，感謝您。
        - kcc.cs09@nycu.edu.tw
        - n96104218@gs.ncku.edu.tw
- 若要關閉 Federated Learning，則執行以下指令。
    
    ```bash
    bash stop_fl.sh
    ```
    - 請輸入 `y` 確認結束 Federated Learning
      ![image](https://github.com/MingChin-Kao/NVFlare_RSNA/blob/main/screenshot/stop_fl.png)
