.class Lcom/android/settings_ext/bk;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gL:Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0

    .prologue
    .line 2233
    iput-object p1, p0, Lcom/android/settings_ext/bk;->gL:Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/android/settings_ext/bk;->gL:Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DataUsageSummary;

    .line 2237
    if-eqz v0, :cond_0

    .line 2238
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->c(Lcom/android/settings_ext/DataUsageSummary;Z)V

    .line 2240
    :cond_0
    return-void
.end method