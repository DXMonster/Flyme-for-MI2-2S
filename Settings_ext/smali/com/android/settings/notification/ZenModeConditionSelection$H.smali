.class final Lcom/android/settings_ext/notification/ZenModeConditionSelection$H;
.super Landroid/os/Handler;
.source "ZenModeConditionSelection.java"


# instance fields
.field final synthetic agl:Lcom/android/settings_ext/notification/ZenModeConditionSelection;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeConditionSelection$H;->agl:Lcom/android/settings_ext/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/notification/ZenModeConditionSelection;Lcom/android/settings_ext/notification/ZenModeConditionSelection$1;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings_ext/notification/ZenModeConditionSelection$H;-><init>(Lcom/android/settings_ext/notification/ZenModeConditionSelection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeConditionSelection$H;->agl:Lcom/android/settings_ext/notification/ZenModeConditionSelection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/notification/ZenModeConditionSelection;->a([Landroid/service/notification/Condition;)V

    .line 154
    :cond_0
    return-void
.end method
