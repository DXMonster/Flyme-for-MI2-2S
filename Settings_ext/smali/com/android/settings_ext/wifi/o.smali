.class Lcom/android/settings_ext/wifi/o;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ext/wifi/o;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/android/settings_ext/eK;->fB()Lcom/android/settings_ext/eK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/o;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/wifi/o;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->b(Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/eK;->c(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/wifi/o;->ate:Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/MiuiWifiDetailFragment;->finish()V

    .line 161
    return-void
.end method