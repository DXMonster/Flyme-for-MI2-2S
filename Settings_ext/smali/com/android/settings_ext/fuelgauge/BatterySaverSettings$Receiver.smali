.class final Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverSettings.java"


# instance fields
.field final synthetic aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

.field private mRegistered:Z


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$1;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;-><init>(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 190
    # getter for: Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BatterySaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->c(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-static {v1}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->b(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .prologue
    .line 195
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->d(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->aar:Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;->d(Lcom/android/settings_ext/fuelgauge/BatterySaverSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/fuelgauge/BatterySaverSettings$Receiver;->mRegistered:Z

    goto :goto_0
.end method