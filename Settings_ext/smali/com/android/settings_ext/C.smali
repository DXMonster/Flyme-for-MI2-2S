.class Lcom/android/settings_ext/C;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# instance fields
.field final synthetic ba:Lcom/android/settings_ext/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ApnSettings;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings_ext/C;->ba:Lcom/android/settings_ext/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p2}, Lcom/android/settings_ext/ApnSettings;->c(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/android/settings_ext/D;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    # getter for: Lcom/android/settings_ext/ApnSettings;->aQ:Z
    invoke-static {}, Lcom/android/settings_ext/ApnSettings;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/C;->ba:Lcom/android/settings_ext/ApnSettings;

    invoke-static {v0}, Lcom/android/settings_ext/ApnSettings;->a(Lcom/android/settings_ext/ApnSettings;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/C;->ba:Lcom/android/settings_ext/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method