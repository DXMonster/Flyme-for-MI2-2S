.class Lcom/android/settings_ext/wifi/openwifi/g;
.super Landroid/content/BroadcastReceiver;
.source "FreeWifiLogin.java"


# instance fields
.field final synthetic ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings_ext/wifi/openwifi/g;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_ext/wifi/openwifi/g;->ayx:Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;

    invoke-static {v0, p1, p2}, Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;->a(Lcom/android/settings_ext/wifi/openwifi/FreeWifiLogin;Landroid/content/Context;Landroid/content/Intent;)V

    .line 248
    return-void
.end method