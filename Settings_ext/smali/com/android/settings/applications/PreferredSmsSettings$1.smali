.class Lcom/android/settings_ext/applications/PreferredSmsSettings$1;
.super Ljava/lang/Object;
.source "PreferredSmsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic HV:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field final synthetic HW:Lcom/android/settings_ext/applications/PreferredSmsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/PreferredSmsSettings;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$1;->HW:Lcom/android/settings_ext/applications/PreferredSmsSettings;

    iput-object p2, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$1;->HV:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$1;->HW:Lcom/android/settings_ext/applications/PreferredSmsSettings;

    iget-object v1, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$1;->HV:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/PreferredSmsSettings;->a(Lcom/android/settings_ext/applications/PreferredSmsSettings;Ljava/lang/String;)V

    .line 114
    return-void
.end method
