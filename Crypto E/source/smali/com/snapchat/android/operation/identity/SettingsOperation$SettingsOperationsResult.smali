.class public Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/identity/SettingsOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsOperationsResult"
.end annotation


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final synthetic e:Lcom/snapchat/android/operation/identity/SettingsOperation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/operation/identity/SettingsOperation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->e:Lcom/snapchat/android/operation/identity/SettingsOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean p2, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->a:Z

    .line 106
    iput-object p3, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->b:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->c:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->d:Ljava/lang/String;

    .line 109
    return-void
.end method
