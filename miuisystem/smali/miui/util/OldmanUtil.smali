.class public Lmiui/util/OldmanUtil;
.super Ljava/lang/Object;
.source "OldmanUtil.java"


# static fields
.field public static final IS_ELDER_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    const-string v2, "persist.sys.user_mode"

    invoke-static {v2, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
