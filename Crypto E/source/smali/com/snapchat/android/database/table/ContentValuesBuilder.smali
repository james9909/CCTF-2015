.class public Lcom/snapchat/android/database/table/ContentValuesBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/database/schema/Schema;D)Lcom/snapchat/android/database/table/ContentValuesBuilder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 49
    return-object p0
.end method

.method public a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    return-object p0
.end method

.method public a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    return-object p0
.end method

.method public a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object p0
.end method

.method public a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v1, p0, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a:Landroid/content/ContentValues;

    invoke-interface {p1}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    return-object p0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
