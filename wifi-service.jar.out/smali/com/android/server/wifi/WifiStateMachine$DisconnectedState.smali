.class Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7763
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7768
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7769
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7841
    :goto_0
    return-void

    .line 7777
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_framework_scan_interval_ms"

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$23102(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7787
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7788
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 7789
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedScanPeriodMs:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$23000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    int-to-long v2, v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22102(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7796
    :cond_1
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$9700()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7797
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Enter disconnected State scan interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$23100(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEnableBackgroundScan= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7803
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$15102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7806
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 7812
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7819
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7820
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7821
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handlePnoFailError()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$23800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7833
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 7834
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20058

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$23904(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7838
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$24002(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7840
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 7791
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$23100(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22102(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 7793
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7794
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrameworkScanIntervalMs:J
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$23100(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22102(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 7825
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0xc8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(ZI)V
    invoke-static {v0, v7, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;ZI)V

    goto :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7978
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7979
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 7981
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22102(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7982
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(ZI)V
    invoke-static {v0, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;ZI)V

    .line 7983
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v12, 0x20058

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 7845
    const/4 v2, 0x1

    .line 7847
    .local v2, "ret":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v8, p1, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7849
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 7970
    const/4 v2, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    move v7, v2

    .line 7972
    :cond_1
    :goto_1
    return v7

    .line 7851
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    .line 7852
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$23900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 7854
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7, v10, v10, v11, v11}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 7855
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$23904(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v12, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 7860
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanConfigured:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$24100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7863
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7, v10, v10, v11, v11}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 7864
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x2005b

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPnoPeriodicScanToken:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$24204(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v8, v9, v10, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 7874
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$23904(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v12, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7876
    const/4 v2, 0x0

    .line 7877
    goto/16 :goto_0

    .line 7879
    :sswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_0

    .line 7880
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$8402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7882
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 7883
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$8400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    .line 7884
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v8, 0x20084

    invoke-virtual {v6, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7885
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 7888
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 7895
    :sswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    .line 7896
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7897
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SUPPLICANT_STATE_CHANGE_EVENT state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> state= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v8}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " debouncing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7901
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$10300(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 7903
    const/4 v2, 0x0

    .line 7904
    goto/16 :goto_0

    .line 7906
    .end local v3    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isScanAllowed(I)Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 7908
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "DisconnectedState: ignore scan"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$24400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7912
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7913
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(Z)Z

    .line 7916
    :cond_5
    const/4 v2, 0x0

    .line 7917
    goto/16 :goto_0

    .line 7920
    :sswitch_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$8200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7921
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 7922
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handlePnoFailError()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$23800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7926
    :cond_6
    const/4 v2, 0x0

    .line 7927
    goto/16 :goto_0

    .line 7929
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 7930
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7931
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 7932
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 7934
    .local v0, "defaultInterval":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_scan_interval_p2p_connected_ms"

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 7937
    .local v4, "scanIntervalMs":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    long-to-int v7, v4

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 7953
    .end local v0    # "defaultInterval":I
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "scanIntervalMs":J
    :cond_7
    :goto_2
    :sswitch_9
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7959
    const/4 v2, 0x0

    .line 7961
    goto/16 :goto_0

    .line 7938
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_8
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    .line 7939
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Turn on scanning after p2p disconnected"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7940
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$23904(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v12, v9, v6}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2

    .line 7942
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$23200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 7944
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(Z)Z

    move-result v6

    if-nez v6, :cond_b

    .line 7945
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handlePnoFailError()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$23800(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_2

    .line 7947
    :cond_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v8, "Stop periodic scan on PNO success"

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7948
    :cond_c
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanConfigured:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$24102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_2

    .line 7963
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :sswitch_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanIntevelOnMiracastModeChange(I)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$24500(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 7966
    :sswitch_b
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_d

    move v6, v7

    :cond_d
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v8, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    goto/16 :goto_0

    .line 7849
    nop

    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_3
        0x20047 -> :sswitch_6
        0x20048 -> :sswitch_4
        0x2004a -> :sswitch_9
        0x2004b -> :sswitch_9
        0x20058 -> :sswitch_1
        0x2005b -> :sswitch_2
        0x2005f -> :sswitch_b
        0x2300b -> :sswitch_8
        0x23011 -> :sswitch_a
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_5
        0x25004 -> :sswitch_3
    .end sparse-switch
.end method
