.class Lcom/android/settings_ext/bluetooth/BluetoothEnabler$1;
.super Landroid/os/Handler;
.source "BluetoothEnabler.java"


# instance fields
.field final synthetic MJ:Lcom/android/settings_ext/bluetooth/BluetoothEnabler;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_bluetooth_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEnabler$1;->MJ:Lcom/android/settings_ext/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/BluetoothEnabler;->a(Lcom/android/settings_ext/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/search/e;->bn(Landroid/content/Context;)Lcom/android/settings_ext/search/e;

    move-result-object v1

    const-class v2, Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ext/search/e;->b(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method