.class Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings$1;
.super Ljava/lang/Object;
.source "MultiSimRingtoneSettings.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# instance fields
.field final synthetic aip:Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings$1;->aip:Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings$1;->aip:Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings;

    invoke-static {v0}, Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings;->a(Lcom/android/settings_ext/ringtone/MultiSimRingtoneSettings;)V

    .line 53
    return-void
.end method
