.class Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableEnabler.java"


# instance fields
.field final synthetic MG:Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$1;->MG:Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 86
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    if-eq v0, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler$1;->MG:Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDiscoverableEnabler;->aQ(I)V

    .line 93
    :cond_0
    return-void
.end method
