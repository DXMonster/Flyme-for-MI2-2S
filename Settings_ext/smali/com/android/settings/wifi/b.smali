.class Lcom/android/settings_ext/wifi/b;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# instance fields
.field final synthetic asw:Lcom/android/settings_ext/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ext/wifi/b;->asw:Lcom/android/settings_ext/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/b;->asw:Lcom/android/settings_ext/wifi/AdvancedWifiSettings;

    invoke-static {v0}, Lcom/android/settings_ext/wifi/AdvancedWifiSettings;->a(Lcom/android/settings_ext/wifi/AdvancedWifiSettings;)V

    .line 90
    :cond_1
    return-void
.end method
