.class public Lcom/snapchat/android/notification/AndroidNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/notification/AndroidNotificationManager$3;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$Type;,
        Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[J

.field private static c:Ljava/lang/String;

.field private static d:Lcom/snapchat/android/notification/AndroidNotificationManager;


# instance fields
.field private final e:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private final g:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

.field private h:Z

.field private i:Landroid/os/Handler;

.field private final j:Lcom/snapchat/android/model/UserPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:[Ljava/lang/String;

    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:[J

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 184
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a()Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;Lcom/snapchat/android/model/UserPrefs;)V

    .line 186
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;Lcom/snapchat/android/model/UserPrefs;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 194
    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 195
    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->g:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->i:Landroid/os/Handler;

    .line 197
    iput-object p4, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Lcom/snapchat/android/model/UserPrefs;

    .line 198
    return-void
.end method

.method private a(Ljava/util/List;)Landroid/util/Pair;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 738
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 748
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    .line 740
    :pswitch_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 744
    :pswitch_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/notification/AndroidNotificationManager;
    .locals 2

    .prologue
    .line 201
    const-class v1, Lcom/snapchat/android/notification/AndroidNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-direct {v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 204
    :cond_0
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/res/Resources;Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 733
    invoke-direct {p0, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    .line 734
    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/snapchat/android/model/UsernameDisplayNamePair;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/UsernameDisplayNamePair;

    .line 761
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 762
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/UsernameDisplayNamePair;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 766
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 767
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 773
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 631
    sget-object v6, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 632
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :cond_0
    invoke-virtual {p0, p1, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 683
    :goto_0
    return-void

    .line 637
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 638
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move v8, v9

    .line 643
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->c:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 644
    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->d:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 646
    sget-object v3, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->i:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->h:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    move v8, v0

    .line 656
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 658
    invoke-direct {p0, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I

    move-result v0

    .line 659
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 660
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 661
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 663
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 670
    invoke-interface {v4, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 675
    aget-object v0, v3, v0

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 679
    const/4 v7, 0x0

    .line 681
    :cond_4
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_5
    move v0, v9

    .line 653
    goto :goto_1

    .line 665
    :pswitch_0
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 666
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 504
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 505
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 507
    const/4 v1, 0x0

    .line 508
    const/4 v0, 0x0

    .line 509
    const/4 v8, 0x0

    .line 510
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    .line 512
    :goto_0
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->c:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->d:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 516
    new-instance v1, Lcom/snapchat/android/model/UsernameDisplayNamePair;

    invoke-direct {v1, v4, v3}, Lcom/snapchat/android/model/UsernameDisplayNamePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v3, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne p4, v3, :cond_2

    const/4 v3, 0x1

    .line 520
    :goto_1
    if-eqz v3, :cond_5

    const/4 v6, 0x1

    .line 522
    :goto_2
    invoke-direct {p0, v1, v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/model/UsernameDisplayNamePair;Ljava/util/LinkedHashMap;)V

    .line 524
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->h:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_3
    move v8, v0

    move-object v0, v1

    .line 529
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 538
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 545
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-direct {p0, v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v3

    .line 551
    const v1, 0x7f0c013f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/UsernameDisplayNamePair;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v1, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 557
    const/4 v7, 0x0

    .line 559
    if-nez v6, :cond_1

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 560
    invoke-virtual {v0}, Lcom/snapchat/android/model/UsernameDisplayNamePair;->a()Ljava/lang/String;

    move-result-object v7

    .line 563
    :cond_1
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V

    .line 565
    :goto_4
    return-void

    .line 519
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 526
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 531
    :cond_4
    invoke-virtual {p0, p1, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_4

    .line 540
    :pswitch_0
    invoke-virtual {p0, p1, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_4

    :cond_5
    move v6, v2

    goto :goto_2

    :cond_6
    move v2, v6

    goto/16 :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 792
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->aw:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 799
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->f:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq p6, v1, :cond_2

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->g:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq p6, v1, :cond_2

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->h:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne p6, v1, :cond_8

    :cond_2
    const/4 v1, 0x1

    move v3, v1

    .line 800
    :goto_1
    if-eqz v3, :cond_9

    const v1, 0x7f02015f

    move v2, v1

    .line 804
    :goto_2
    if-eqz v3, :cond_a

    .line 805
    const v1, 0x7f02015e

    invoke-static {p1, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 813
    :goto_3
    invoke-direct {p0, p1, p6, p7}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 814
    iget-object v4, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {p6}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 816
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v6, p3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    if-eqz p8, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 831
    if-nez p8, :cond_c

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ax:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    move v2, v1

    .line 835
    :goto_4
    if-nez p8, :cond_d

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ay:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 837
    :goto_5
    if-eqz v1, :cond_4

    .line 838
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:[J

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 842
    :cond_4
    if-nez p8, :cond_e

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->az:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    .line 844
    :goto_6
    if-eqz v1, :cond_5

    .line 845
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 848
    :cond_5
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->aA:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 849
    if-eqz v1, :cond_6

    .line 850
    const/16 v1, -0x100

    const/16 v2, 0x3e8

    const/16 v4, 0x7d0

    invoke-virtual {v3, v1, v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 854
    :cond_6
    new-instance v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020083

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 856
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 861
    iget-boolean v1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Z

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->k()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->l()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_7
    const/4 v1, 0x1

    .line 864
    :goto_7
    if-eqz v1, :cond_10

    .line 865
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->p(Z)V

    .line 866
    const-string v0, "AndroidNotificationManager"

    const-string v1, "Do not display notifications because the app is in the full screen mode or has any back stack."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 799
    :cond_8
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_1

    .line 800
    :cond_9
    const v1, 0x7f02015d

    move v2, v1

    goto/16 :goto_2

    .line 807
    :cond_a
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 808
    const v1, 0x7f02015b

    invoke-static {p1, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3

    .line 810
    :cond_b
    const v1, 0x7f02015c

    invoke-static {p1, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3

    .line 831
    :cond_c
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_4

    .line 835
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 842
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 861
    :cond_f
    const/4 v1, 0x0

    goto :goto_7

    .line 870
    :cond_10
    sget-boolean v1, Lcom/snapchat/android/util/ApiHelper;->c:Z

    if-eqz v1, :cond_11

    .line 871
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 873
    :cond_11
    invoke-virtual {p6}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a()I

    move-result v1

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 875
    if-nez p8, :cond_13

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->aB:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 877
    :goto_8
    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->d(Landroid/content/Context;)V

    .line 880
    :cond_12
    iget-boolean v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Z

    if-eqz v0, :cond_0

    if-nez p9, :cond_0

    .line 881
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->e:Z

    if-nez v0, :cond_14

    .line 882
    invoke-virtual {p0, p1, p6}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto/16 :goto_0

    .line 875
    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    .line 884
    :cond_14
    iget-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->i:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/notification/AndroidNotificationManager$2;

    invoke-direct {v1, p0, p1, p6}, Lcom/snapchat/android/notification/AndroidNotificationManager$2;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/snapchat/android/model/UsernameDisplayNamePair;Ljava/util/LinkedHashMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/UsernameDisplayNamePair;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/snapchat/android/model/UsernameDisplayNamePair;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 570
    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 571
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-void
.end method

.method private a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z
    .locals 2
    .parameter

    .prologue
    .line 686
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 691
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 689
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I
    .locals 2
    .parameter

    .prologue
    .line 696
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 720
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 698
    :pswitch_1
    const v0, 0x7f070007

    goto :goto_0

    .line 702
    :pswitch_2
    const v0, 0x7f070008

    goto :goto_0

    .line 708
    :pswitch_3
    const v0, 0x7f070009

    goto :goto_0

    .line 712
    :pswitch_4
    const v0, 0x7f070006

    goto :goto_0

    .line 716
    :pswitch_5
    const v0, 0x7f07000a

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 576
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 627
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 582
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 583
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    move v8, v9

    move-object v1, v3

    .line 588
    :goto_1
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->c:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 589
    sget-object v0, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->d:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 593
    if-nez v1, :cond_9

    .line 594
    :goto_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :goto_3
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->e:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    sget-object v1, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->h:Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/NotificationTable$NotificationSchema;->b()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_4
    move v8, v1

    .line 603
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 605
    invoke-direct {p0, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)I

    move-result v1

    .line 606
    if-gez v1, :cond_4

    invoke-direct {p0, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 611
    :cond_4
    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    if-le v7, v2, :cond_8

    move-object v7, v3

    .line 616
    :goto_5
    invoke-direct {p0, p4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 617
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 618
    invoke-static {p4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_0

    :cond_5
    move v1, v9

    .line 600
    goto :goto_4

    :cond_6
    move-object v3, v4

    .line 625
    :goto_6
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 623
    :cond_7
    invoke-direct {p0, p2, v6, v1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/res/Resources;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    move-object v7, v0

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private c(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 231
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const v0, 0x7f0c0140

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Ljava/lang/String;

    .line 234
    :cond_0
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 978
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 980
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 982
    if-nez v1, :cond_0

    .line 983
    const v1, 0x10000006

    const-string v2, "MyLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 985
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 987
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    monitor-enter p0

    :try_start_0
    const-string v0, "AndroidNotificationManager"

    const-string v2, "clearAllNotifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 216
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->values()[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 217
    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 218
    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/SharedPreferences;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    const-string v2, "username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->d:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 248
    const-string v2, "snap_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v2, "sender"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    const-string v2, "sender_username"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    const-string v2, "text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 252
    const-string v2, "chat_message_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 253
    const-string v2, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    const-string v10, "cash_amount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 255
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 259
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v14

    .line 260
    const-string v2, "silent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 262
    const-string v2, "AndroidNotificationManager"

    const-string v11, "GCM Intent Extras"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v2, v11, v13}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    const-string v13, "AndroidNotificationManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " > key="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", value="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v2, v15}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 267
    :cond_2
    const/4 v11, 0x0

    .line 268
    :try_start_2
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v14, v2, :cond_3

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v2, :cond_4

    .line 269
    :cond_3
    invoke-virtual {v14}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v7}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    .line 271
    sub-long v18, v4, v16

    .line 272
    const-string v2, "AndroidNotificationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "latestNonNinjaNotificationTimestamp="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v2, v13, v15}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    const-string v2, "AndroidNotificationManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "elapsedSinceLatestNonNinja="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v2, v13, v15}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const-wide/32 v16, 0x124f80

    cmp-long v2, v18, v16

    if-gez v2, :cond_4

    .line 275
    const-string v2, "AndroidNotificationManager"

    const-string v11, "Turn on the ninja mode of this chat notification!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v2, v11, v13}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    const/4 v11, 0x1

    .line 280
    :cond_4
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    .line 283
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Z

    if-nez v2, :cond_5

    if-eqz v11, :cond_a

    :cond_5
    const/4 v2, 0x1

    .line 285
    :goto_2
    if-nez v13, :cond_b

    if-nez v2, :cond_b

    if-nez v10, :cond_b

    const/4 v10, 0x1

    .line 287
    :goto_3
    const/4 v2, 0x1

    .line 288
    sget-object v13, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v9}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    const/4 v2, 0x0

    .line 291
    const/4 v10, 0x0

    .line 292
    const-string v13, "AndroidNotificationManager"

    const-string v15, "This notification is for a chat message that has already been seen. Will not sync or display."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v13, v2

    move v2, v10

    .line 306
    :goto_4
    if-eqz v2, :cond_7

    .line 307
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v2, :cond_6

    .line 309
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    :cond_6
    invoke-virtual {v14}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v12}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 318
    :cond_7
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v14, v2, :cond_8

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v2, :cond_9

    .line 320
    :cond_8
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v7}, Lcom/snapchat/android/database/table/NotificationTable;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 327
    :cond_9
    if-eqz v13, :cond_0

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v7}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 285
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 293
    :cond_c
    sget-object v13, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->n:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v13, :cond_d

    .line 294
    const/4 v2, 0x0

    .line 295
    const/4 v10, 0x0

    .line 296
    new-instance v13, Lcom/snapchat/android/notification/UploadLogNotificationResponder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v8}, Lcom/snapchat/android/notification/UploadLogNotificationResponder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->a()V

    move v13, v2

    move v2, v10

    goto :goto_4

    .line 297
    :cond_d
    sget-object v13, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->p:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v14, v13, :cond_e

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Lcom/snapchat/android/model/UserPrefs;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/snapchat/android/model/UserPrefs;->C(Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Lcom/snapchat/android/model/UserPrefs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v2}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->i(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->j:Lcom/snapchat/android/model/UserPrefs;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/snapchat/android/model/UserPrefs;->u(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    const/4 v10, 0x0

    .line 303
    const/4 v2, 0x0

    move v13, v2

    move v2, v10

    goto/16 :goto_4

    :cond_e
    move v13, v2

    move v2, v10

    goto/16 :goto_4
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    const-string v0, "AndroidNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNotifications type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 226
    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 335
    invoke-static {p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 336
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 382
    invoke-static {v0, v6}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;Z)Z

    .line 384
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_0

    .line 346
    invoke-static {p3}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 348
    const-string v2, "AndroidNotificationManager"

    const-string v3, "CHAT-LOG: AndroidNotificationManager executing LoadConversationPageTask %s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->g:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    new-instance v3, Lcom/snapchat/android/notification/AndroidNotificationManager$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager$1;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    invoke-virtual {v2, v1, v6, v3}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;ZLcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;)V

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 417
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 418
    const v0, 0x7f0c013a

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p2, v1, v8

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->m:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V

    .line 423
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 497
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->o:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V

    .line 499
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 428
    const/4 v8, 0x0

    .line 429
    const/4 v6, 0x0

    .line 431
    const-wide/16 v4, 0x0

    .line 432
    const-wide/16 v2, 0x0

    .line 434
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v9

    .line 435
    invoke-virtual {v9}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v9

    .line 436
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide/from16 v16, v2

    move v3, v6

    move v6, v8

    move-wide v8, v4

    move-wide/from16 v4, v16

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 437
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v13

    .line 438
    if-eqz v13, :cond_0

    .line 441
    monitor-enter v13

    .line 442
    :try_start_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 443
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->X()Z

    move-result v10

    if-nez v10, :cond_1

    .line 444
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v10

    .line 445
    instance-of v15, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v15, :cond_3

    .line 446
    check-cast v2, Lcom/snapchat/android/model/chat/Chat;

    .line 447
    sget-object v15, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v2, v15}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 448
    cmp-long v2, v4, v10

    if-gez v2, :cond_2

    move-wide v4, v10

    .line 451
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 452
    goto :goto_1

    :cond_3
    instance-of v15, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v15, :cond_1

    .line 453
    instance-of v15, v2, Lcom/snapchat/android/model/SentSnap;

    if-eqz v15, :cond_4

    .line 454
    check-cast v2, Lcom/snapchat/android/model/SentSnap;

    .line 455
    sget-object v15, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v2, v15}, Lcom/snapchat/android/model/SentSnap;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 457
    :cond_4
    cmp-long v2, v8, v10

    if-gez v2, :cond_b

    .line 460
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v8, v10

    goto :goto_1

    .line 464
    :cond_5
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 469
    :cond_6
    if-nez v3, :cond_7

    if-nez v6, :cond_7

    .line 488
    :goto_3
    return-void

    .line 471
    :cond_7
    if-lez v3, :cond_8

    if-nez v6, :cond_8

    .line 472
    const v2, 0x7f0c0139

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->w:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    move-object v5, v6

    .line 486
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->l:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v11}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 475
    :cond_8
    if-nez v3, :cond_9

    if-lez v6, :cond_9

    .line 476
    const v2, 0x7f0c013b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->e:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    move-object v5, v6

    goto :goto_4

    .line 480
    :cond_9
    const v2, 0x7f0c013c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 481
    cmp-long v2, v8, v4

    if-lez v2, :cond_a

    const v2, 0x7f0c013b

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 483
    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v5, 0x0

    sget-object v8, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->w:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    sget-object v8, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->e:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v8, v4, v5

    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    move-object v5, v3

    goto :goto_4

    .line 481
    :cond_a
    const v2, 0x7f0c0139

    goto :goto_5

    :cond_b
    move-wide v10, v8

    goto/16 :goto_2
.end method

.method public varargs a(Landroid/content/Context;ZI[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 493
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager;->h:Z

    .line 209
    return-void
.end method

.method b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 904
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 905
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 929
    :pswitch_0
    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 931
    if-eqz p3, :cond_3

    .line 933
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v1, "friendUsername"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    :goto_0
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 963
    :goto_1
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->k:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    :cond_0
    const-string v1, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    :cond_1
    if-eqz p2, :cond_2

    .line 969
    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    :cond_2
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 974
    return-object v0

    .line 909
    :pswitch_1
    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 910
    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 915
    :pswitch_2
    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    const-string v1, "destinationPage"

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 923
    :pswitch_3
    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 936
    :cond_3
    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 955
    :pswitch_4
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 956
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 907
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 941
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    const-string v0, "AndroidNotificationManager"

    const-string v1, "displayNotifications"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-static {p1}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-static {v0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 400
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    .line 401
    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:[Ljava/lang/String;

    :goto_1
    invoke-static {p1, v0}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 404
    if-eqz v1, :cond_4

    .line 405
    :try_start_0
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 400
    goto :goto_0

    .line 401
    :cond_3
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 406
    :cond_4
    :try_start_1
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne p2, v0, :cond_6

    .line 407
    invoke-direct {p0, p1, v3, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 412
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 409
    :cond_6
    :try_start_2
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Landroid/content/res/Resources;Landroid/database/Cursor;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 993
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 997
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    const-string v3, "plain/text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1002
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "shake2reportdroid@snapchat.com"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "[Android] New ANR Report"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    const/high16 v0, 0x800

    invoke-static {p1, v6, v2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1008
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v3

    .line 1010
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1011
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    const-string v0, "\n"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 1014
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 1015
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1019
    :cond_1
    const-string v0, "ANR detected from Snapchat"

    .line 1020
    const/16 v0, 0x19

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 1029
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "ANR detected from Snapchat"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x1080078

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const-string v6, "ANR detected from Snapchat"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x108008f

    const-string v6, "Send E-mail"

    invoke-virtual {v4, v5, v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1041
    const/16 v1, 0xe

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1020
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
