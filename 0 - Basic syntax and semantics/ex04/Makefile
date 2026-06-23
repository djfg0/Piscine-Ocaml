# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/10 00:22:41 by fguarrac          #+#    #+#              #
#    Updated: 2026/06/02 20:25:59 by fguarrac         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= ft_print_comb

INTERFACE	= $(NAME).mli
INT			= $(INTERFACE:.mli=.cmi)
SRC			= $(NAME).ml main.ml
OBJ			= $(SRC:.ml=.cmx)

COMP		= $(shell which ocamlopt)
RM			= $(shell which rm)

%.cmi: %.mli
	$(COMP) -c $< -o $@

%.cmx: %.ml
	$(COMP) -c $< -o $@

$(NAME): $(SRC) $(INTERFACE) $(INT) $(OBJ)
	$(COMP) -cmi-file $(INT) $(OBJ) -o $(NAME)

.PHONY: all
all:
	@$(MAKE) --no-print-directory -e $(NAME)

.PHONY: clean
clean:
ifneq ("$(wildcard *.o)", "")
	$(RM) -f *.o
endif
ifneq ("$(wildcard *.cm*)", "")
	$(RM) -f *.cm*
endif

.PHONY: fclean
fclean: clean
ifneq ("$(wildcard $(NAME))", "")
	$(RM) -f $(NAME)
endif

.PHONY: re
re: fclean
	@$(MAKE) --no-print-directory
