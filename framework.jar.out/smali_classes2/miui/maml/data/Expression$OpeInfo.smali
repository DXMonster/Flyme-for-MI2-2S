.class Lmiui/maml/data/Expression$OpeInfo;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$OpeInfo$Parser;
    }
.end annotation


# static fields
.field private static final OPE_SIZE:I

.field private static final mOpePar:[I

.field private static final mOpePriority:[I

.field private static final mOpes:[Ljava/lang/String;


# instance fields
.field public participants:I

.field public priority:I

.field public str:Ljava/lang/String;

.field public unary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xa

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpePar:[I

    .line 45
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "=="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "**"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "||"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 51
    sget-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return-void

    .line 32
    :array_0
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x7
        0x7
        0xb
        0xc
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    return-object v0
.end method

.method public static getOpeInfo(I)Lmiui/maml/data/Expression$OpeInfo;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 98
    new-instance v0, Lmiui/maml/data/Expression$OpeInfo;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo;-><init>()V

    .line 99
    .local v0, "info":Lmiui/maml/data/Expression$OpeInfo;
    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    aget v1, v1, p0

    iput v1, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    .line 100
    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePar:[I

    aget v1, v1, p0

    iput v1, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    .line 101
    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    aget-object v1, v1, p0

    iput-object v1, v0, Lmiui/maml/data/Expression$OpeInfo;->str:Ljava/lang/String;

    .line 102
    return-object v0
.end method
