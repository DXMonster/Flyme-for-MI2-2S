.class Lcom/android/settings_ext/widget/H;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/settings_ext/widget/I;


# instance fields
.field final synthetic arS:Lcom/android/settings_ext/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/widget/SwitchBar;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ext/widget/H;->arS:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/widget/H;->arS:Lcom/android/settings_ext/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings_ext/widget/SwitchBar;->aZ(Z)V

    .line 97
    return-void
.end method