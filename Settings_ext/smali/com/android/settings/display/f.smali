.class Lcom/android/settings_ext/display/f;
.super Ljava/lang/Object;
.source "FluencyModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic UD:Lcom/android/settings_ext/display/e;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/e;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/display/f;->UD:Lcom/android/settings_ext/display/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/display/f;->UD:Lcom/android/settings_ext/display/e;

    iget-object v0, v0, Lcom/android/settings_ext/display/e;->UC:Lcom/android/settings_ext/display/FluencyModeListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/display/FluencyModeListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 87
    return-void
.end method
