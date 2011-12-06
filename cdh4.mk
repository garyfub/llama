CDH_VERSION=4
PREV_RELEASE_TAG=pre-cdh4-base
export IVY_MIRROR_PROP=http://azov01.sf.cloudera.com:8081/artifactory/cloudera-mirrors/

CDH_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package

# Bigtop-utils
BIGTOP_UTILS_NAME=bigtop-utils
BIGTOP_UTILS_RELNOTES_NAME=Bigtop-utils
BIGTOP_UTILS_PKG_NAME=bigtop-utils
BIGTOP_UTILS_BASE_VERSION=0.4
BIGTOP_UTILS_RELEASE_VERSION=1
BIGTOP_UTILS_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package
BIGTOP_UTILS_BASE_REF=cdh4-base-$(BIGTOP_UTILS_BASE_VERSION)
BIGTOP_UTILS_BUILD_REF=HEAD
BIGTOP_UTILS_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
$(eval $(call PACKAGE,bigtop-utils,BIGTOP_UTILS))

# Hadoop 0.20.0-based hadoop package
HADOOP_NAME=hadoop
HADOOP_RELNOTES_NAME=Apache Hadoop
HADOOP_PKG_NAME=hadoop
HADOOP_BASE_VERSION=0.23.0
HADOOP_RELEASE_VERSION=1
HADOOP_TARBALL_DST=hadoop-$(HADOOP_BASE_VERSION)-r1198585.tar.gz
HADOOP_TARBALL_SRC=$(HADOOP_TARBALL_DST)
HADOOP_SITE=$(CLOUDERA_ARCHIVE)
HADOOP_GIT_REPO=$(REPO_DIR)/cdh4/hadoop
HADOOP_BASE_REF=cdh4-base-$(HADOOP_BASE_VERSION)
HADOOP_BUILD_REF=HEAD
HADOOP_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
$(eval $(call PACKAGE,hadoop,HADOOP))

# ZooKeeper
ZOOKEEPER_NAME=zookeeper
ZOOKEEPER_RELNOTES_NAME=Apache Zookeeper
ZOOKEEPER_PKG_NAME=hadoop-zookeeper
ZOOKEEPER_BASE_VERSION=3.4.0
ZOOKEEPER_RELEASE_VERSION=1
ZOOKEEPER_TARBALL_DST=zookeeper-$(ZOOKEEPER_BASE_VERSION).tar.gz
ZOOKEEPER_TARBALL_SRC=$(ZOOKEEPER_TARBALL_DST)
ZOOKEEPER_GIT_REPO=$(REPO_DIR)/cdh4/zookeeper
ZOOKEEPER_BASE_REF=cdh4-base-$(ZOOKEEPER_BASE_VERSION)
ZOOKEEPER_BUILD_REF=cdh4-$(ZOOKEEPER_BASE_VERSION)
ZOOKEEPER_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
ZOOKEEPER_SITE=$(CLOUDERA_ARCHIVE)
$(eval $(call PACKAGE,zookeeper,ZOOKEEPER))

# HBase
HBASE_NAME=hbase
HBASE_RELNOTES_NAME=Apache HBase
HBASE_PKG_NAME=hadoop-hbase
HBASE_BASE_VERSION=0.92.0
HBASE_RELEASE_VERSION=1
HBASE_TARBALL_DST=hbase-$(HBASE_BASE_VERSION).tar.gz
HBASE_TARBALL_SRC=hbase-0.92.0-RC0.tar.gz
HBASE_GIT_REPO=$(REPO_DIR)/cdh4/hbase
HBASE_BASE_REF=cdh4-base-$(HBASE_BASE_VERSION)
HBASE_BUILD_REF=cdh4-$(HBASE_BASE_VERSION)
HBASE_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
HBASE_SITE=$(CLOUDERA_ARCHIVE)
$(eval $(call PACKAGE,hbase,HBASE))

# # Pig
# PIG_BASE_VERSION=0.8.1
# PIG_NAME=pig
# PIG_RELNOTES_NAME=Apache Pig
# PIG_PKG_NAME=hadoop-pig
# PIG_TARBALL_DST=pig-$(PIG_BASE_VERSION).tar.gz
# PIG_TARBALL_SRC=$(PIG_TARBALL_DST)
# PIG_GIT_REPO=$(REPO_DIR)/cdh4/pig
# PIG_BASE_REF=cdh-base-$(PIG_BASE_VERSION)
# PIG_BUILD_REF=cdh-$(PIG_BASE_VERSION)+28
# PIG_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
# PIG_SITE=$(CLOUDERA_ARCHIVE)
# $(eval $(call PACKAGE,pig,PIG))

# # Hive
# HIVE_NAME=hive
# HIVE_RELNOTES_NAME=Apache Hive
# HIVE_RELEASE=2
# HIVE_PKG_NAME=hadoop-hive
# HIVE_BASE_VERSION=0.7.1
# HIVE_TARBALL_DST=hive-$(HIVE_BASE_VERSION).tar.gz
# HIVE_TARBALL_SRC=$(HIVE_TARBALL_DST)
# HIVE_GIT_REPO=$(REPO_DIR)/cdh4/hive
# HIVE_BASE_REF=cdh-base-$(HIVE_BASE_VERSION)
# HIVE_BUILD_REF=cdh-$(HIVE_BASE_VERSION)+42
# HIVE_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
# HIVE_SITE=$(CLOUDERA_ARCHIVE)
# $(eval $(call PACKAGE,hive,HIVE))

# HIVE_ORIG_SOURCE_DIR=$(HIVE_BUILD_DIR)/source
# HIVE_SOURCE_DIR=$(HIVE_BUILD_DIR)/source/src

# $(HIVE_TARGET_PREP):
# 	mkdir -p $($(PKG)_SOURCE_DIR)
# 	$(BASE_DIR)/tools/setup-package-build \
# 	  $($(PKG)_GIT_REPO) \
# 	  $($(PKG)_BASE_REF) \
# 	  $($(PKG)_BUILD_REF) \
# 	  $($(PKG)_DOWNLOAD_DST) \
# 	  $(HIVE_BUILD_DIR)/source \
# 	  $($(PKG)_FULL_VERSION)
# 	rsync -av $(HIVE_ORIG_SOURCE_DIR)/cloudera/ $(HIVE_SOURCE_DIR)/cloudera/
# 	touch $@

# # Sqoop
SQOOP_NAME=sqoop
SQOOP_RELNOTES_NAME=Sqoop
SQOOP_PKG_NAME=sqoop
SQOOP_BASE_VERSION=1.4.0
SQOOP_RELEASE_VERSION=1
SQOOP_TARBALL_DST=sqoop-$(SQOOP_BASE_VERSION).tar.gz
SQOOP_TARBALL_SRC=sqoop-$(SQOOP_BASE_VERSION)-src.tar.gz
SQOOP_GIT_REPO=$(REPO_DIR)/cdh4/sqoop
SQOOP_BASE_REF=cdh4-base-$(SQOOP_BASE_VERSION)
SQOOP_BUILD_REF=cdh4-$(SQOOP_BASE_VERSION)
SQOOP_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
SQOOP_SITE=$(CLOUDERA_ARCHIVE)
$(eval $(call PACKAGE,sqoop,SQOOP))

# # Oozie
# OOZIE_NAME=oozie
# OOZIE_RELNOTES_NAME=Apache Oozie
# OOZIE_PKG_NAME=oozie
# OOZIE_BASE_VERSION=2.3.2
# OOZIE_TARBALL_DST=oozie-2.3.2.tar.gz
# OOZIE_TARBALL_SRC=$(OOZIE_TARBALL_DST)
# OOZIE_GIT_REPO=$(REPO_DIR)/cdh4/oozie
# OOZIE_BASE_REF=cdh-base-$(OOZIE_BASE_VERSION)
# OOZIE_BUILD_REF=cdh-$(OOZIE_BASE_VERSION)
# OOZIE_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
# OOZIE_SITE=$(CLOUDERA_ARCHIVE)
# $(eval $(call PACKAGE,oozie,OOZIE))

# # Whirr
# WHIRR_NAME=whirr
# WHIRR_RELNOTES_NAME=Apache Whirr
# WHIRR_PKG_NAME=whirr
# WHIRR_BASE_VERSION=0.5.0
# WHIRR_TARBALL_DST=whirr-$(WHIRR_BASE_VERSION)-incubating-src.tar.gz
# WHIRR_TARBALL_SRC=$(WHIRR_TARBALL_DST)
# WHIRR_GIT_REPO=$(BASE_DIR)/repos/cdh4/whirr
# WHIRR_BASE_REF=cdh-base-$(WHIRR_BASE_VERSION)
# WHIRR_BUILD_REF=cdh-$(WHIRR_BASE_VERSION)
# WHIRR_PACKAGE_GIT_REPO=$(BASE_DIR)/repos/cdh4/cdh-package/bigtop-packages/src
# WHIRR_SITE=$(CLOUDERA_ARCHIVE)
# $(eval $(call PACKAGE,whirr,WHIRR))

# $(WHIRR_TARGET_PREP):
# 	mkdir -p $($(PKG)_SOURCE_DIR)
# 	$(BASE_DIR)/tools/setup-package-build \
# 	  $($(PKG)_GIT_REPO) \
# 	  $($(PKG)_BASE_REF) \
# 	  $($(PKG)_BUILD_REF) \
# 	  $($(PKG)_DOWNLOAD_DST) \
# 	  $($(PKG)_SOURCE_DIR) \
# 	  $($(PKG)_FULL_VERSION)
# 	cp $(WHIRR_GIT_REPO)/cloudera/base.gitignore $(WHIRR_SOURCE_DIR)/.gitignore
# 	touch $@

# # Flume
# FLUME_NAME=flume
# FLUME_RELNOTES_NAME=Flume
# FLUME_PKG_NAME=flume
# FLUME_BASE_VERSION=0.9.4
# FLUME_TARBALL_DST=flume-$(FLUME_BASE_VERSION).tar.gz
# FLUME_TARBALL_SRC=$(FLUME_TARBALL_DST)
# FLUME_GIT_REPO=$(REPO_DIR)/cdh4/flume
# FLUME_BASE_REF=cdh-base-$(FLUME_BASE_VERSION)
# FLUME_BUILD_REF=cdh-$(FLUME_BASE_VERSION)+25
# FLUME_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
# FLUME_SITE=$(CLOUDERA_ARCHIVE)
# $(eval $(call PACKAGE,flume,FLUME))


# # Mahout
# MAHOUT_NAME=mahout
# MAHOUT_RELNOTES_NAME=Mahout
# MAHOUT_PKG_NAME=mahout
# MAHOUT_BASE_VERSION=0.5
# MAHOUT_TARBALL_DST=mahout-distribution-$(MAHOUT_BASE_VERSION)-src.tar.gz
# MAHOUT_TARBALL_SRC=$(MAHOUT_TARBALL_DST)
# MAHOUT_GIT_REPO=$(REPO_DIR)/cdh4/mahout
# MAHOUT_BASE_REF=cdh-base-$(MAHOUT_BASE_VERSION)
# MAHOUT_BUILD_REF=cdh-$(MAHOUT_BASE_VERSION)
# MAHOUT_PACKAGE_GIT_REPO=$(REPO_DIR)/cdh4/cdh-package/bigtop-packages/src
# MAHOUT_SITE=$(CLOUDERA_ARCHIVE)
# $(eval $(call PACKAGE,mahout,MAHOUT))
