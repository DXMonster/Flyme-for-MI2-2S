.class Lcom/android/settings_ext/dndmode/B;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Xy:Lcom/android/settings_ext/dndmode/A;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dndmode/A;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/B;->Xy:Lcom/android/settings_ext/dndmode/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/B;->Xy:Lcom/android/settings_ext/dndmode/A;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/A;->a(Lcom/android/settings_ext/dndmode/A;)Lcom/android/settings_ext/dndmode/C;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/B;->Xy:Lcom/android/settings_ext/dndmode/A;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/A;->a(Lcom/android/settings_ext/dndmode/A;)Lcom/android/settings_ext/dndmode/C;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dndmode/B;->Xy:Lcom/android/settings_ext/dndmode/A;

    invoke-static {v1}, Lcom/android/settings_ext/dndmode/A;->b(Lcom/android/settings_ext/dndmode/A;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/settings_ext/dndmode/C;->s(J)V

    .line 385
    :cond_0
    return-void
.end method
