.class public Lcom/android/settings_ext/wifi/WifiInfo;
.super Lmiui/preference/PreferenceActivity;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f06008f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiInfo;->addPreferencesFromResource(I)V

    .line 34
    return-void
.end method