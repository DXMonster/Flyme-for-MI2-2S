.class public Lcom/xiaomi/a/a/f/b;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# direct methods
.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "security is not nullable"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    .line 120
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 125
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    const-string v5, "%s=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_3
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    if-nez v1, :cond_4

    .line 136
    const/16 v1, 0x26

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 139
    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/b;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 86
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/xiaomi/a/a/f/a;->e([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "CloudCoder.hash4SHA1 "

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/c/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "failed to SHA1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    const-string v1, "CloudCoder.hash4SHA1 "

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/c/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :catch_2
    move-exception v0

    .line 94
    const-string v1, "CloudCoder.hash4SHA1 "

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/c/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method