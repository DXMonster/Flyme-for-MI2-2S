.class Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

.field final synthetic Oc:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

.field final synthetic Od:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Od:Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Oc:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Oc:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->b(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Oc:Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DeviceProfilesSettings$1;->Nv:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 294
    return-void
.end method