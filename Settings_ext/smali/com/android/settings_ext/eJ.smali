.class Lcom/android/settings_ext/eJ;
.super Landroid/database/ContentObserver;
.source "MiuiSoundSettings.java"


# instance fields
.field final synthetic ss:Lcom/android/settings_ext/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiSoundSettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings_ext/eJ;->ss:Lcom/android/settings_ext/MiuiSoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ext/eJ;->ss:Lcom/android/settings_ext/MiuiSoundSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSoundSettings;->fA()V

    .line 279
    return-void
.end method