.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$1;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$StringArrayVariableExpression;,
        Lmiui/maml/data/Expression$NumberArrayVariableExpression;,
        Lmiui/maml/data/Expression$ArrayVariableExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$VariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;,
        Lmiui/maml/data/Expression$Ope;,
        Lmiui/maml/data/Expression$OpeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    return-void
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z

    move-result v0

    return v0
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 794
    .local v0, "ex":Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method private static buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .locals 6
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "token"    # Lmiui/maml/data/Expression$Tokenizer$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Variables;",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p2, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    const/4 v3, 0x0

    .line 919
    iget-object v2, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 920
    .local v1, "newExps":[Lmiui/maml/data/Expression;
    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid expressions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 937
    :goto_0
    return-object v2

    .line 926
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v4, :cond_1

    .line 927
    new-instance v4, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, p0, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>(Lmiui/maml/data/Variables;[Lmiui/maml/data/Expression;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 928
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 929
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    const-string v2, "Expression"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 937
    goto :goto_0
.end method

.method private static buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 19
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 798
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 799
    const/4 v3, 0x0

    .line 915
    :cond_0
    :goto_0
    return-object v3

    .line 805
    :cond_1
    new-instance v13, Lmiui/maml/data/Expression$Tokenizer;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 806
    .local v13, "tk":Lmiui/maml/data/Expression$Tokenizer;
    const/4 v14, 0x0

    .line 807
    .local v14, "token":Lmiui/maml/data/Expression$Tokenizer$Token;
    const/4 v12, 0x0

    .line 808
    .local v12, "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 809
    .local v11, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 810
    .local v5, "expStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression;>;"
    :goto_1
    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 814
    sget-object v16, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 902
    :goto_2
    move-object v12, v14

    goto :goto_1

    .line 821
    :pswitch_0
    const/4 v9, 0x0

    .line 822
    .local v9, "newExp":Lmiui/maml/data/Expression;
    sget-object v16, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 873
    :cond_2
    :goto_3
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 874
    new-instance v10, Lmiui/maml/data/Expression$UnaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v9, v0}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    .local v10, "newExp":Lmiui/maml/data/Expression;
    move-object v9, v10

    .end local v10    # "newExp":Lmiui/maml/data/Expression;
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 824
    :pswitch_1
    new-instance v9, Lmiui/maml/data/Expression$NumberVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 825
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 827
    :pswitch_2
    new-instance v9, Lmiui/maml/data/Expression$StringVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 828
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 830
    :pswitch_3
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    const/4 v8, 0x1

    .line 832
    .local v8, "minus":Z
    :goto_4
    new-instance v9, Lmiui/maml/data/Expression$NumberExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const-string v16, "-"

    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 833
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    if-eqz v8, :cond_2

    .line 834
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    .line 830
    .end local v8    # "minus":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 832
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    .restart local v8    # "minus":Z
    :cond_4
    const-string v16, ""

    goto :goto_5

    .line 839
    .end local v8    # "minus":Z
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_4
    new-instance v9, Lmiui/maml/data/Expression$StringExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .line 840
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto/16 :goto_3

    .line 842
    :pswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v14, v11}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v9

    .line 843
    if-nez v9, :cond_2

    .line 844
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 847
    :pswitch_6
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 848
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: no array name before []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 851
    :cond_5
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression;

    .line 852
    .local v7, "lastExp":Lmiui/maml/data/Expression;
    instance-of v0, v7, Lmiui/maml/data/Expression$VariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 853
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    .line 854
    .local v6, "indexExp":Lmiui/maml/data/Expression;
    if-nez v6, :cond_6

    .line 855
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: no index expression in []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v7

    .line 858
    check-cast v16, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    move-result-object v15

    .line 859
    .local v15, "varName":Ljava/lang/String;
    instance-of v0, v7, Lmiui/maml/data/Expression$NumberVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 860
    new-instance v9, Lmiui/maml/data/Expression$NumberArrayVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .line 867
    .end local v6    # "indexExp":Lmiui/maml/data/Expression;
    .end local v15    # "varName":Ljava/lang/String;
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    :cond_7
    :goto_6
    if-nez v9, :cond_2

    .line 868
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 861
    .restart local v6    # "indexExp":Lmiui/maml/data/Expression;
    .restart local v15    # "varName":Ljava/lang/String;
    :cond_8
    instance-of v0, v7, Lmiui/maml/data/Expression$StringVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 862
    new-instance v9, Lmiui/maml/data/Expression$StringArrayVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_6

    .line 865
    .end local v6    # "indexExp":Lmiui/maml/data/Expression;
    .end local v15    # "varName":Ljava/lang/String;
    :cond_9
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: the expression before [] is not a variable:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 876
    .end local v7    # "lastExp":Lmiui/maml/data/Expression;
    :cond_a
    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 879
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_7
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    if-eqz v12, :cond_b

    iget-object v0, v12, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 881
    :cond_b
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    .line 882
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 891
    :cond_c
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    .line 892
    .local v3, "exp2":Lmiui/maml/data/Expression;
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    .line 893
    .local v2, "exp1":Lmiui/maml/data/Expression;
    new-instance v17, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .end local v2    # "exp1":Lmiui/maml/data/Expression;
    .end local v3    # "exp2":Lmiui/maml/data/Expression;
    :cond_d
    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v16

    if-lez v16, :cond_e

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v16, v0

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    if-gtz v16, :cond_e

    .line 887
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 888
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: invalid operator position:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 895
    :cond_e
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 899
    :pswitch_8
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 905
    :cond_f
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 906
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: invalid expression:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 910
    :cond_10
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    .line 911
    .restart local v3    # "exp2":Lmiui/maml/data/Expression;
    :goto_7
    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 912
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    .line 913
    .restart local v2    # "exp1":Lmiui/maml/data/Expression;
    new-instance v4, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v3, v0}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    .end local v3    # "exp2":Lmiui/maml/data/Expression;
    .local v4, "exp2":Lmiui/maml/data/Expression;
    move-object v3, v4

    .line 914
    .end local v4    # "exp2":Lmiui/maml/data/Expression;
    .restart local v3    # "exp2":Lmiui/maml/data/Expression;
    goto :goto_7

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 822
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 5
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    .line 757
    .local v0, "exps":[Lmiui/maml/data/Expression;
    array-length v3, v0

    new-array v2, v3, [Lmiui/maml/data/RootExpression;

    .line 758
    .local v2, "roots":[Lmiui/maml/data/RootExpression;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 759
    aget-object v3, v0, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v2, v1

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_0
    new-instance v3, Lmiui/maml/data/RootExpression;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    goto :goto_1

    .line 761
    :cond_1
    return-object v2
.end method

.method private static buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 8
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "bracketCount":I
    const/4 v4, 0x0

    .line 767
    .local v4, "inApostrophe":Z
    const/4 v6, 0x0

    .line 768
    .local v6, "start":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v2, "exps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 770
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 771
    .local v1, "c":C
    if-nez v4, :cond_0

    .line 772
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 773
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    add-int/lit8 v6, v3, 0x1

    .line 781
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    .line 782
    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 769
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 775
    :cond_2
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 777
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_0

    .line 778
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 782
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 785
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 786
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    .line 789
    .local v5, "ret":[Lmiui/maml/data/Expression;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .locals 2
    .param p0, "params"    # [Lmiui/maml/data/Expression;

    .prologue
    .line 941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 942
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 943
    const/4 v1, 0x0

    .line 945
    :goto_1
    return v1

    .line 941
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isDigitChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 743
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionCharRest(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 751
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionCharStart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 747
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 739
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 968
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 969
    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 951
    invoke-virtual {p0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    .line 953
    .local v2, "value":D
    :try_start_0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 955
    :goto_0
    return-object v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method
