.class Lcom/android/settings_ext/bw;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# instance fields
.field final synthetic ho:Lcom/android/settings_ext/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DateTimeSettings;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/settings_ext/bw;->ho:Lcom/android/settings_ext/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/settings_ext/bw;->ho:Lcom/android/settings_ext/DateTimeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/settings_ext/bw;->ho:Lcom/android/settings_ext/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/DateTimeSettings;->i(Landroid/content/Context;)V

    .line 434
    :cond_0
    return-void
.end method