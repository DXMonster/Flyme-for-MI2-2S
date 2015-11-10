.class public Lmiui/maml/data/BaseFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BaseFunctions$1;,
        Lmiui/maml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lmiui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lmiui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lmiui/maml/data/BaseFunctions$Fun;I)V
    .locals 0
    .param p1, "f"    # Lmiui/maml/data/BaseFunctions$Fun;
    .param p2, "i"    # I

    .prologue
    .line 114
    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 115
    iput-object p1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    .line 116
    return-void
.end method

.method private digit(II)I
    .locals 3
    .param p1, "number"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v1, -0x1

    .line 313
    if-gtz p2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 316
    const/4 v1, 0x0

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lez p1, :cond_3

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_3

    .line 318
    div-int/lit8 p1, p1, 0xa

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_3
    if-lez p1, :cond_0

    rem-int/lit8 v1, p1, 0xa

    goto :goto_0
.end method

.method public static load()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 70
    const-string v0, "rand"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 71
    const-string v0, "sin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 72
    const-string v0, "cos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 73
    const-string v0, "tan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 74
    const-string v0, "asin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 75
    const-string v0, "acos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 76
    const-string v0, "atan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 77
    const-string v0, "sinh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 78
    const-string v0, "cosh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 79
    const-string v0, "sqrt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 80
    const-string v0, "abs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 81
    const-string v0, "len"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 82
    const-string v0, "eval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 83
    const-string v0, "preciseeval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 84
    const-string v0, "round"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 85
    const-string v0, "int"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 86
    const-string v0, "num"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 88
    const-string v0, "isnull"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 89
    const-string v0, "not"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 91
    const-string v0, "min"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 92
    const-string v0, "max"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 93
    const-string v0, "pow"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 94
    const-string v0, "digit"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 96
    const-string v0, "eq"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 97
    const-string v0, "ne"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 98
    const-string v0, "ge"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 99
    const-string v0, "gt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 100
    const-string v0, "le"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 101
    const-string v0, "lt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 102
    const-string v0, "ifelse"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 104
    const-string v0, "and"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 105
    const-string v0, "or"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 107
    const-string v0, "eqs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 108
    const-string v0, "substr"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 110
    const-string v0, "hash"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    .line 111
    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 16
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 121
    sget-object v12, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 126
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    .line 127
    .local v10, "value0":D
    sget-object v12, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    .line 249
    const-string v12, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v14}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-wide/16 v12, 0x0

    .end local v10    # "value0":D
    :goto_0
    return-wide v12

    .line 123
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    goto :goto_0

    .line 129
    .restart local v10    # "value0":D
    :pswitch_1
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    goto :goto_0

    .line 133
    :pswitch_3
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    goto :goto_0

    .line 135
    :pswitch_4
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    goto :goto_0

    .line 137
    :pswitch_5
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    goto :goto_0

    .line 139
    :pswitch_6
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    goto :goto_0

    .line 141
    :pswitch_7
    invoke-static {v10, v11}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v12

    goto :goto_0

    .line 143
    :pswitch_8
    invoke-static {v10, v11}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v12

    goto :goto_0

    .line 145
    :pswitch_9
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    goto :goto_0

    .line 147
    :pswitch_a
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    goto :goto_0

    .line 149
    :pswitch_b
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 151
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    goto :goto_0

    .line 155
    .end local v9    # "str":Ljava/lang/String;
    :pswitch_c
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "expStr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 157
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 160
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 163
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v12, :cond_3

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    goto/16 :goto_0

    .line 165
    .end local v2    # "expStr":Ljava/lang/String;
    :pswitch_d
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "pexpStr":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 167
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 169
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 170
    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 173
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v6

    .line 174
    .local v6, "result":Ljava/math/BigDecimal;
    :goto_1
    if-eqz v6, :cond_8

    .line 175
    invoke-virtual {v6}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    .line 176
    .local v7, "scale":I
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v8, v12

    .line 179
    .local v8, "setScale":I
    if-lez v8, :cond_6

    if-le v7, v8, :cond_6

    .line 180
    const/4 v12, 0x4

    invoke-virtual {v6, v8, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    .line 182
    :cond_6
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    goto/16 :goto_0

    .line 173
    .end local v6    # "result":Ljava/math/BigDecimal;
    .end local v7    # "scale":I
    .end local v8    # "setScale":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 184
    .restart local v6    # "result":Ljava/math/BigDecimal;
    :cond_8
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    goto/16 :goto_0

    .line 186
    .end local v5    # "pexpStr":Ljava/lang/String;
    .end local v6    # "result":Ljava/math/BigDecimal;
    :pswitch_e
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    goto/16 :goto_0

    .line 188
    :pswitch_f
    double-to-int v12, v10

    int-to-double v12, v12

    goto/16 :goto_0

    :pswitch_10
    move-wide v12, v10

    .line 190
    goto/16 :goto_0

    .line 192
    :pswitch_11
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v12

    if-eqz v12, :cond_9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_9
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 194
    :pswitch_12
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_a

    const-wide/16 v12, 0x0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 196
    :pswitch_13
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    goto/16 :goto_0

    .line 198
    :pswitch_14
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    goto/16 :goto_0

    .line 200
    :pswitch_15
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    goto/16 :goto_0

    .line 202
    :pswitch_16
    double-to-int v12, v10

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lmiui/maml/data/BaseFunctions;->digit(II)I

    move-result v12

    int-to-double v12, v12

    goto/16 :goto_0

    .line 204
    :pswitch_17
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-nez v12, :cond_b

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_b
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 206
    :pswitch_18
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-eqz v12, :cond_c

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_c
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 208
    :pswitch_19
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-ltz v12, :cond_d

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_d
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 210
    :pswitch_1a
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-lez v12, :cond_e

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_e
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 212
    :pswitch_1b
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_f

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_f
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 214
    :pswitch_1c
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gez v12, :cond_10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_10
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 216
    :pswitch_1d
    move-object/from16 v0, p1

    array-length v4, v0

    .line 217
    .local v4, "len":I
    rem-int/lit8 v12, v4, 0x2

    const/4 v13, 0x1

    if-eq v12, v13, :cond_11

    .line 218
    const-string v12, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "function parameter number should be 2*n+1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v14}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 221
    :cond_11
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    add-int/lit8 v12, v4, -0x1

    div-int/lit8 v12, v12, 0x2

    if-ge v3, v12, :cond_13

    .line 222
    mul-int/lit8 v12, v3, 0x2

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_12

    .line 223
    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    goto/16 :goto_0

    .line 221
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 225
    :cond_13
    add-int/lit8 v12, v4, -0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    goto/16 :goto_0

    .line 228
    .end local v3    # "i":I
    .end local v4    # "len":I
    :pswitch_1e
    move-object/from16 v0, p1

    array-length v4, v0

    .line 229
    .restart local v4    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v4, :cond_15

    .line 230
    aget-object v12, p1, v3

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_14

    .line 231
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 229
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 233
    :cond_15
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 236
    .end local v3    # "i":I
    .end local v4    # "len":I
    :pswitch_1f
    move-object/from16 v0, p1

    array-length v4, v0

    .line 237
    .restart local v4    # "len":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v4, :cond_17

    .line 238
    aget-object v12, p1, v3

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_16

    .line 239
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 237
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 241
    :cond_17
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 244
    .end local v3    # "i":I
    .end local v4    # "len":I
    :pswitch_20
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :cond_18
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 246
    :pswitch_21
    invoke-virtual/range {p0 .. p2}, Lmiui/maml/data/BaseFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v12

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 13
    .param p1, "mParaExps"    # [Lmiui/maml/data/Expression;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 255
    sget-object v9, Lmiui/maml/data/BaseFunctions$1;->$SwitchMap$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v10, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v10}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_0

    .line 308
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/BaseFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_0
    return-object v8

    .line 257
    :sswitch_0
    array-length v2, p1

    .line 258
    .local v2, "len":I
    rem-int/lit8 v9, v2, 0x2

    if-eq v9, v12, :cond_1

    .line 259
    const-string v9, "Expression"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "function parameter number should be 2*n+1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v11}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v8, v2, -0x1

    div-int/lit8 v8, v8, 0x2

    if-ge v1, v8, :cond_3

    .line 263
    mul-int/lit8 v8, v1, 0x2

    aget-object v8, p1, v8

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 264
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-object v8, p1, v8

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 262
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_3
    add-int/lit8 v8, v2, -0x1

    aget-object v8, p1, v8

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 269
    .end local v1    # "i":I
    .end local v2    # "len":I
    :sswitch_1
    aget-object v9, p1, v11

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 272
    array-length v4, p1

    .line 273
    .local v4, "size":I
    aget-object v9, p1, v12

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    double-to-int v5, v10

    .line 275
    .local v5, "start":I
    const/4 v9, 0x3

    if-lt v4, v9, :cond_5

    .line 276
    const/4 v9, 0x2

    :try_start_0
    aget-object v9, p1, v9

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    double-to-int v2, v10

    .line 277
    .restart local v2    # "len":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 278
    .local v7, "strlen":I
    if-le v2, v7, :cond_4

    .line 279
    move v2, v7

    .line 281
    :cond_4
    add-int v9, v5, v2

    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 283
    .end local v2    # "len":I
    .end local v7    # "strlen":I
    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 289
    .end local v4    # "size":I
    .end local v5    # "start":I
    .end local v6    # "str":Ljava/lang/String;
    :sswitch_2
    aget-object v9, p1, v11

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "expStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 293
    iget-object v9, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 294
    iput-object v0, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 295
    iget-object v9, p0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    .line 297
    :cond_6
    iget-object v9, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v9, :cond_0

    iget-object v8, p0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 300
    .end local v0    # "expStr":Ljava/lang/String;
    :sswitch_3
    aget-object v9, p1, v11

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 301
    .restart local v0    # "expStr":Ljava/lang/String;
    aget-object v9, p1, v12

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "method":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 305
    invoke-static {v0, v3}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 284
    .end local v0    # "expStr":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    .restart local v4    # "size":I
    .restart local v5    # "start":I
    .restart local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_2
        0x1e -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_3
    .end sparse-switch
.end method
