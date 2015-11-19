.class public Lmiui/bluetooth/ble/MiBlePayProfile;
.super Lmiui/bluetooth/ble/MiBleProfile;
.source "MiBlePayProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "callback"    # Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    .line 22
    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 4
    .param p1, "plain"    # [B

    .prologue
    .line 51
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBlePayProfile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->encrypt(Ljava/lang/String;Landroid/os/ParcelUuid;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerRssiChangedListener(Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;)V
    .locals 2
    .param p1, "listener"    # Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x4

    new-instance v1, Lmiui/bluetooth/ble/MiBlePayProfile$1;

    invoke-direct {v1, p0, p1}, Lmiui/bluetooth/ble/MiBlePayProfile$1;-><init>(Lmiui/bluetooth/ble/MiBlePayProfile;Lmiui/bluetooth/ble/MiBlePayProfile$OnRSSIChangedListerner;)V

    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/MiBlePayProfile;->registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z

    goto :goto_0
.end method

.method public setEncryptionKey([B)Z
    .locals 4
    .param p1, "key"    # [B

    .prologue
    .line 32
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBlePayProfile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :try_start_0
    iget-object v1, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mDevice:Ljava/lang/String;

    iget-object v3, p0, Lmiui/bluetooth/ble/MiBlePayProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v1, v2, v3, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setEncryptionKey(Ljava/lang/String;Landroid/os/ParcelUuid;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 39
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 39
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterRssiChangedListener()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/MiBlePayProfile;->unregisterPropertyNotifyCallback(I)Z

    .line 81
    return-void
.end method
