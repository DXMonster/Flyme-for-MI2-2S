.class Lcom/android/settings_ext/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# instance fields
.field final synthetic Nt:Lcom/android/settings_ext/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$1;->Nt:Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :cond_0
    const/16 v0, 0xc

    if-ne v1, v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothSettings$1;->Nt:Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/BluetoothSettings;->a(Lcom/android/settings_ext/bluetooth/BluetoothSettings;Z)Z

    .line 135
    :cond_1
    return-void
.end method
