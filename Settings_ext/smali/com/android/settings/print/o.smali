.class final Lcom/android/settings_ext/print/o;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field final synthetic ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/print/PrintSettingsFragment;Lcom/android/settings_ext/print/l;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/settings_ext/print/o;-><init>(Lcom/android/settings_ext/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 16

    .prologue
    .line 365
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ext/print/PrintSettingsFragment;->c(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    :cond_1
    return-void

    .line 368
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "print_jobs_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ext/print/PrintSettingsFragment;->c(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ext/print/PrintSettingsFragment;->c(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 374
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 375
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v10, :cond_1

    .line 376
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/print/PrintJobInfo;

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v3}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 382
    const-class v2, Lcom/android/settings_ext/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 418
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    const v13, 0x7f090699

    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/4 v15, 0x1

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 435
    :goto_2
    :pswitch_1
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 436
    const-string v3, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-static {v2}, Lcom/android/settings_ext/print/PrintSettingsFragment;->c(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 375
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 388
    :pswitch_2
    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_4

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    const v3, 0x7f09069a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 393
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    const v3, 0x7f09069b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 400
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    const v3, 0x7f09069c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 406
    :pswitch_4
    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    const v3, 0x7f09069d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 411
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    const v3, 0x7f09069b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 426
    :pswitch_5
    const v2, 0x7f020116

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    goto/16 :goto_2

    .line 431
    :pswitch_6
    const v2, 0x7f020117

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    goto/16 :goto_2

    .line 385
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 357
    new-instance v0, Lcom/android/settings_ext/print/p;

    iget-object v1, p0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/print/p;-><init>(Landroid/content/Context;)V

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/print/o;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/print/o;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings_ext/print/PrintSettingsFragment;->c(Lcom/android/settings_ext/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    return-void
.end method
