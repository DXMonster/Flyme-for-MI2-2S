.class Lcom/android/settings_ext/fu;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic uy:Lcom/android/settings_ext/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ProxySelector;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ext/fu;->uy:Lcom/android/settings_ext/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings_ext/fu;->uy:Lcom/android/settings_ext/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings_ext/ProxySelector;->fV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/fu;->uy:Lcom/android/settings_ext/ProxySelector;

    invoke-virtual {v0}, Lcom/android/settings_ext/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 251
    :cond_0
    return-void
.end method
