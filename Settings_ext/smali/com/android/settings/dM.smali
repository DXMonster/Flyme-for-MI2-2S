.class Lcom/android/settings_ext/dM;
.super Ljava/lang/Thread;
.source "MiuiLocaleSettings.java"


# instance fields
.field final synthetic qj:Lcom/android/settings_ext/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ext/dM;->qj:Lcom/android/settings_ext/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lmiui/os/MiuiInit;->installPreinstallApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ext/dM;->qj:Lcom/android/settings_ext/MiuiLocaleSettings;

    invoke-static {v0}, Lcom/android/settings_ext/MiuiLocaleSettings;->a(Lcom/android/settings_ext/MiuiLocaleSettings;)V

    .line 80
    :cond_0
    return-void
.end method
